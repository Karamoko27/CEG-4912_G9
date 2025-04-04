with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
with HAL; use HAL;

with STM32; use STM32;


-- with Uart;
with Screen_Draw;

with Serial_IO; use Serial_IO;
with Serial_IO.Blocking;use Serial_IO.Blocking;
with Peripherals; use Peripherals;
with STM32.Device; use STM32.Device;

package Gps is

   type States_T is (Sentence_Type, Time_UTC, Latitude, Longitude, Invalid);
   State : States_T := Sentence_Type;
   Reset_Char : constant Character := '$';
   Split_Char : constant Character := ',';

   Buffer : String (1 .. 16) := (others => ' ');
   Current_Char : Character;
   Pos_In_buffer : Natural := 1;

   
   type Sentence_T is  (GNGGA, GNRMC, GNGSA, GNGSV, GNVTG, GNGLL);

   type Latitude_T is delta 10.0 ** (-3) digits 7;
   type Longitude_T is delta 10.0 ** (-3) digits 7;

   type Message_T is record
      Sentence : Sentence_T   := GNGGA;
      Time_UTC : Natural      := 1140;
      Latitude : Latitude_T   := 45.419;
      Longitude : Longitude_T := -75.657;
   end record;

   Message : Message_T;

   function Img (M : Message_T) return String;
   function Update_State (Data : Character; Current_State : States_T) return States_T;
   
   
end Gps;