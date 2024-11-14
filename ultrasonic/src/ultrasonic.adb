--  STM32-specific package
with STM32.Board; use STM32.Board;
with STM32.GPIO; use STM32.GPIO;
with STM32.Device; use STM32.Device;

--  HAL functions
with HAL.UART; use HAL.UART; 
with Ada.Text_IO; use Ada.Text_IO;
with Interfaces;
with HAL.Bitmap; use HAL.Bitmap;
with Screen_Draw;

with HAL.Framebuffer;
with Screen_Draw;

-- to cast imcompatible types
with Ada.Unchecked_Conversion; 

with Ada.Real_Time; use Ada.Real_Time;

procedure ultrasonic is

   --  subtype ultra_pins is GPIO_Point;
   Trig_Pin : STM32.GPIO.GPIO_Point := PA0; -- PA0 for TRIG
   Echo_Pin : STM32.GPIO.GPIO_Point := PA1; -- PA1 for ECHO

   --  Configuration records
   Trig_Config : constant STM32.GPIO.GPIO_Port_Configuration:= (
      Mode      => Mode_Out,
      Resistors => Floating, 
      Output_Type => Push_Pull, 
      Speed => Speed_100MHz
   );

   Echo_Config : constant STM32.GPIO.GPIO_Port_Configuration := (
      Mode      => Mode_In,
      Resistors => Pull_Down
   );

   Delay_sec :constant Time_Span := Seconds(1);
   Delay_Us :constant Time_Span := Microseconds(10);    
   trigger_time: Ada.Real_Time.Time;

   procedure Trigger_Sensor is
   begin
      STM32.GPIO.Set(Trig_Pin);         --  Set TRIG to high
      delay until Clock + Delay_Us;     --  Wait for 10 microseconds
      STM32.GPIO.Clear(Trig_Pin);       --  Set TRIG to low
   end Trigger_Sensor;

   function Echo_Pin_Is_High return Boolean is
      Signal_State : Boolean:=True;
   begin
      Signal_State := STM32.GPIO.Set(Echo_Pin);  --  Get the pin state directly
      Screen_Draw.WriteMsg(Signal_State'Image);
      return Signal_State;
   end Echo_Pin_Is_High;

   function Get_Echo_Time return Ada.Real_Time.Time_Span is
      Start_Time, End_Time : Ada.Real_Time.Time;
   begin
      Screen_Draw.WriteMsg("gecho1");
      --  Wait for ECHO pin to go high
      while Echo_Pin_Is_High=False loop
         delay 0.01;  --  Polling until the pin is high
      end loop;
      Screen_Draw.WriteMsg("gecho2");
      Start_Time := Ada.Real_Time.Clock;

      --  Wait for ECHO pin to go low
      while Echo_Pin_Is_High=True loop
         delay 0.01;  --  Polling until the pin is low
      end loop;
      End_Time := Ada.Real_Time.Clock;
      
      return End_Time - Start_Time;
      
   end Get_Echo_Time;

   function Calculate_Distance (Echo_Time : Ada.Real_Time.Time_Span) return Float is
      Speed_Of_Sound : constant Float := 343.0;  --  in meters per second
      Distance       : Float;
   begin
      Screen_Draw.WriteMsg("Cdis1");
      --  Convert time to seconds and calculate distance (time * speed / 2)
      Distance := Float(Ada.Real_Time.To_Duration(Echo_Time)) * Speed_Of_Sound / 2.0;
      Screen_Draw.WriteMsg("Cdis2");
      return Distance;
   end Calculate_Distance;


begin
   --  Initialize the GPIO pins
   
   Configure_IO(Trig_Pin, Trig_Config);  --  PA0 as output
   Configure_IO(Echo_Pin, Echo_Config);  --  PA1 as input with pull-down
   Screen_Draw.WriteMsg("Ultrasonic Test");

   loop
      Screen_Draw.WriteMsg("2");
      Trigger_Sensor;
      Screen_Draw.WriteMsg("3");
      declare
         Echo_Time : constant Ada.Real_Time.Time_Span := Get_Echo_Time;
         Distance  : constant Float := Calculate_Distance(Echo_Time);
         Message   : constant String := "Distance: " & Float'Image(Distance) & " meters" & ASCII.LF;
      begin
         --  Output the calculated distance (for now, you might just debug or send over UART)
         --  HAL.UART.Transmit(Message);

         Screen_Draw.WriteMsg(Message);
         
      end;

      delay until Clock + Delay_sec;  --  Delay 1 second before the next measurement
   end loop;
end ultrasonic;
