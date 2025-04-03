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



package Bnomain is

   IMU : BNO055_9DOF_IMU (Sensor_Port'Access);
   Calibration : Calibration_States;
   Data : Sensor_Data;
   LinAcc : Sensor_Data;
   Outgoing : aliased Message (Physical_Size => 1024);
   msg : String (1..1024);

   procedure Reset_BNO055_Via_Hardware (Reset : in out GPIO_Point);
   procedure Initialize_IMU_IO_Hardware
     (--Port   : access I2C_Port;
      Port   : access STM32.I2C.I2C_Port;
      SCL    : STM32.GPIO.GPIO_Point;
      SCL_AF : STM32.GPIO_Alternate_Function;
      SDA    : STM32.GPIO.GPIO_Point;
      SDA_AF : STM32.GPIO_Alternate_Function;
      Reset  : STM32.GPIO.GPIO_Point);
   procedure Set_Up_IMU;
   function Get_Orientation (Data: in out Sensor_Data) return String;

end Bnomain;