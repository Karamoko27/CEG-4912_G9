with STM32.GPIO;use STM32.GPIO;
with STM32;use STM32;
with STM32.Device;use STM32.Device;
with Screen_Draw; use Screen_Draw;

procedure Ir_Motion is

   Ir_Pin: STM32.GPIO.GPIO_Point := PA0;


   Ir_Config : constant STM32.GPIO.GPIO_Port_Configuration := (
      Mode      => Mode_In,
      Resistors => Pull_Up
   );
   

   -- Returns False when motion is detected
   function Ir_Motion_Free return Boolean is
   Ir_State : Boolean;
   begin
      Ir_State:= Ir_Pin.Set;
      return Ir_State;
   end Ir_Motion_Free;

begin
   Configure_IO(Ir_Pin,Ir_Config);
   loop
      -- Screen_Draw.WriteMsg (Ir_Motion_Detected'Image); 
      Screen_Draw.WriteMsg (Ir_Motion_Free'Image);
      delay 1.0;
   end loop;
end Ir_Motion;
