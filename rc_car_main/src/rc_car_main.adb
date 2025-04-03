with Ada.Real_Time; use Ada.Real_Time;

with Bnomain; use Bnomain;
with BNO055_I2C;  use BNO055_I2C;
with BNO055_I2C_IO; use BNO055_I2C_IO;
with Ir_Motion; use Ir_Motion;
with Screen_Draw; use Screen_Draw;
with Serial_IO.Blocking; use Serial_IO.Blocking;
with Serial_IO; use Serial_IO;
with Peripherals; use Peripherals;

with STM32.Board; use STM32.Board;
with STM32.Device; use STM32.Device;
with STM32.GPIO; use STM32.GPIO;
with STM32; use STM32;


with Ultrasonic; use Ultrasonic;

procedure Rc_Car_Main is
begin

   Serial_IO.Blocking.Initialize(Host);
   Configure (Host, Baud_Rate => 115200);

   -- Initialisation de l'IMU
   Set_Up_IMU;
   IMU.Configure;

   -- Init IR_Motion
   Configure_IO(Ir_Pin,Ir_Config);

   -- Init Ultrasonic
   Configure_IO(Trig_Pin, Trig_Config); 
   Configure_IO(Echo_Pin, Echo_Config);  

   loop
      -----------------------------------------------------
      -- Bno
      -----------------------------------------------------

      -- Screen_Draw.WriteMsg (Ir_Motion_Detected'Image); 
      -- Screen_Draw.WriteMsg (Ir_Motion_Free'Image);
      Data := IMU.Output (Kind => Euler_Orientation);
      LinAcc := IMU.Output (Kind => Linear_Acceleration_Data);
      -- Affichage des données
      --via screen 

      Screen_Draw.WriteMsg ("Orientation: " & Data (X)'Image & " " & Data (Y)'Image & " " & Data (Z)'Image);
      --  Screen_Draw.WriteMsg ("Acceleration" & LinAcc (X)'Image & "m/2s" & LinAcc (Y)'Image & "m/s2");
      --  via uart
      
      -- Calibration := IMU.Sensor_Calibration;
      delay until Clock + Milliseconds (BNO055_Min_Sample_Interval);


      -----------------------------------------------------
      -- Ultrasonic
      -----------------------------------------------------
      --  -- Trigger_Sensor;
      --  declare
      --     Echo_Time : Ada.Real_Time.Time_Span := Get_Echo_Time;
      --     Distance  : constant T6_D3 := Calculate_Distance(T6_D3 (To_Duration (Echo_Time)));
      --  begin
      --     -- Screen_Draw.WriteMsg ("Distance: "& Distance'Image & "m");
      --     null;
      --  end;
      --  --delay until Clock + Delay_sec;  --  Delay 1 second before the next measurement


      -----------------------------------------------------
      -- IR_Motion
      -----------------------------------------------------
      if Ir_Motion_Free then
         Screen_Draw.WriteMsg ("IR_Motion_Free");
         Serial_IO.Blocking.Put_Mess (Host,"IR_Motion_Free");
      else
         Screen_Draw.WriteMsg ("IR_Motion_Detected");
         Serial_IO.Blocking.Put_Mess (Host,"IR_Motion_Detected");
      end if;


      ---------------------------------------------------------
      -- UART
      ------------------------------------------------------------
      --  -- Send the data to the UART
      Serial_IO.Blocking.Put_Mess (Host,"Orientation: " & Data(X)'Image & " " & Data (Y)'Image & 
      "Linear Acceleration: " & LinAcc(X)'Image & LinAcc(Y)'Image );

   end loop;
end Rc_Car_Main;
