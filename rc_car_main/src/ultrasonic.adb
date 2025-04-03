
with Ada.Real_Time; use Ada.Real_Time;
with Ultrasonic;use Ultrasonic;

package body Ultrasonic is

   procedure Trigger_Sensor is
   begin
      STM32.GPIO.Clear(Trig_Pin); 
      delay until Clock + (Delay_Us/2);
      STM32.GPIO.Set(Trig_Pin);         --  Set TRIG to high
      delay until Clock + Delay_Us;     --  Wait for 10 microseconds
      STM32.GPIO.Clear(Trig_Pin);       --  Set TRIG to low
   end Trigger_Sensor;

   function Echo_Pin_Is_High return Boolean is
      Signal_State : Boolean;
   begin
      Signal_State := Set(Echo_Pin); --  Get the pin state directly
      return Signal_State;
   end Echo_Pin_Is_High;

   function Get_Echo_Time return Ada.Real_Time.Time_Span is
      Start_Time, End_Time : Ada.Real_Time.Time;
   begin
      -- Wait for the pin to go high
      while not Echo_Pin_Is_High loop
         delay until Clock + Microseconds(10);
         Start_Time := Ada.Real_Time.Clock;
      end loop;
      Start_Time := Ada.Real_Time.Clock;

      --Wait for the pin to go low
      while Echo_Pin_Is_High loop
         delay until Clock + Microseconds(10);
         End_Time := Ada.Real_Time.Clock;
      end loop;
      End_Time := Ada.Real_Time.Clock;

      return End_Time - Start_Time;  -- Adjust as needed
   end Get_Echo_Time;


   function Calculate_Distance (Time_Diff : T6_D3) return T6_D3 is
      Speed_Of_Sound : constant T6_D3 := 343.0;  --  in meters per second
      By_Two : constant T6_D3 := Time_Diff / 2.0;
   begin
      --  Convert time to seconds and calculate distance 
      return By_Two * Speed_Of_Sound;
   end Calculate_Distance;

end Ultrasonic;