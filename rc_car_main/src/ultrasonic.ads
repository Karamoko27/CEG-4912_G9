--  STM32-specific package
with STM32.Board; use STM32.Board;
with STM32.GPIO; use STM32.GPIO;
with STM32.Device; use STM32.Device;
with STM32.EXTI; use STM32.EXTI;
with STM32_SVD.GPIO;


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

package Ultrasonic is

   type T6_D3 is delta 10.0 ** (-3) digits 8;
   Time_Diff : T6_D3;
   --  subtype ultra_pins is GPIO_Point;
   Trig_Pin : STM32.GPIO.GPIO_Point := PE6; 
   Echo_Pin : STM32.GPIO.GPIO_Point := PC8; 

    --  Configuration records
   Trig_Config : constant STM32.GPIO.GPIO_Port_Configuration:= (
      Mode      => Mode_Out,
      Resistors => Floating, 
      Output_Type => Push_Pull, 
      Speed => Speed_25MHz
   );

   Echo_Config : constant STM32.GPIO.GPIO_Port_Configuration := (
      Mode      => Mode_In,
      Resistors => Pull_Down
   );



   Delay_sec :constant Time_Span := Seconds(1);
   Delay_Us :constant Time_Span := Microseconds(10);    
   trigger_time: Ada.Real_Time.Time;

   procedure Trigger_Sensor;
   function Echo_Pin_Is_High return Boolean;
   function Get_Echo_Time return Ada.Real_Time.Time_Span;
   function Calculate_Distance (Time_Diff : T6_D3) return T6_D3;

end Ultrasonic;

