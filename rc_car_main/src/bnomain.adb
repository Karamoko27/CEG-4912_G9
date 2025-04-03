with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
with HAL; use HAL;

with BNO055_I2C_IO; use BNO055_I2C_IO;
with HAL.I2C; use HAL.I2C;

with STM32.GPIO; use STM32.GPIO;
with STM32.I2C;
with STM32.Device; use STM32.Device;

with BNO055_I2C;  use BNO055_I2C;
with STM32.I2C;

with Message_Buffers;    use Message_Buffers;
with Serial_IO.Blocking; use Serial_IO.Blocking;
with Serial_IO; use Serial_IO;
with Peripherals; use Peripherals;

with Screen_Draw; 
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;

with Bnomain; use Bnomain;



package body Bnomain is
   

   -------------------------------
   -- Reset_BNO055_Via_Hardware --
   -------------------------------

   procedure Reset_BNO055_Via_Hardware (Reset : in out GPIO_Point) is
   begin
      --  reset is active low
      STM32.GPIO.Clear (Reset);
      --  the BNO055 Datasheet, section 3.2, says 20ns is required
      delay until Clock + Milliseconds (1);
      STM32.GPIO.Set (Reset);
      delay until Clock + Milliseconds (650);  --  essential
      --  the time required after reset is the Power On Reset (POR) time
      --  specified in the Datasheet, table 0-2, "From Reset to Config mode"
   end Reset_BNO055_Via_Hardware;

    --------------------------------
   -- Initialize_IMU_IO_Hardware --
   --------------------------------

   procedure Initialize_IMU_IO_Hardware
     (--Port   : access I2C_Port;
      Port   : access STM32.I2C.I2C_Port;
      SCL    : STM32.GPIO.GPIO_Point;
      SCL_AF : STM32.GPIO_Alternate_Function;
      SDA    : STM32.GPIO.GPIO_Point;
      SDA_AF : STM32.GPIO_Alternate_Function;
      Reset  : STM32.GPIO.GPIO_Point)
   is
      Selected_Clock_Speed : constant := 10_000;
   begin
      Enable_Clock (SCL);
      Enable_Clock (SDA);
      Enable_Clock (Reset);

      Enable_Clock (Port.all);

      STM32.Device.Reset (Port.all);

      Configure_IO (Reset, (Mode        => Mode_Out,
                            Resistors   => Floating,
                            Output_Type => Push_Pull,
                            Speed       => Speed_25MHz));

      Configure_IO (SCL, (Mode           => Mode_AF,
                          Resistors      => Pull_Up,
                          AF_Output_Type => Open_Drain,
                          AF_Speed       => Speed_100MHz,
                          AF             => SCL_AF));
      Configure_IO (SDA, (Mode           => Mode_AF,
                          Resistors      => Pull_Up,
                          AF_Output_Type => Open_Drain,
                          AF_Speed       => Speed_100MHz,
                          AF             => SDA_AF));

      STM32.I2C.Configure
        (Port.all,
         (Clock_Speed              => Selected_Clock_Speed,
          Addressing_Mode          => STM32.I2C.Addressing_Mode_7bit,
          General_Call_Enabled     => False,
          Clock_Stretching_Enabled => True,
          Own_Address              => 16#00#,
          others                   => <>));

      STM32.I2C.Set_State (Port.all, Enabled => True);
   end Initialize_IMU_IO_Hardware;

   procedure Set_Up_IMU is
   begin
      Initialize_IMU_IO_Hardware
        (Port   => Selected_I2C_Port,
         SCL    => Selected_I2C_Clock_Pin,
         SCL_AF => Selected_I2C_Port_AF,
         SDA    => Selected_I2C_Data_Pin,
         SDA_AF => Selected_I2C_Port_AF,
         Reset  => Selected_HW_Reset_Pin);

      Reset_BNO055_Via_Hardware (Selected_HW_Reset_Pin);

      if IMU.Device_Id /= I_Am_BNO055 then
         raise Program_Error with "No BNO055!";
      end if;
   end Set_Up_IMU;


   function Get_Orientation (Data : in out Sensor_Data) 
   return String is
   Orientation : String := "Orientation: ";
   begin
      --Set_Up_IMU;
      --IMU.Configure;
      Data := IMU.Output (Kind => Euler_Orientation);
      Orientation := "Orientation: " & Data (X)'Image & " " & Data (Y)'Image & " " & Data (Z)'Image;
      return Orientation;
   end Get_Orientation;
   




   -- usage for UART
   --type Bno_Data_T is array (0 .. 36) of Character; 
   --Bno_Data : Bno_Data_T;
   --Msg: Message_Buffers.Message (Physical_Size => 1024);


end Bnomain;