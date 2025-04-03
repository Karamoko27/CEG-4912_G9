with STM32.GPIO;use STM32.GPIO;
with STM32;use STM32;
with STM32.Device;use STM32.Device;
with Screen_Draw; use Screen_Draw;

with Ir_Motion;use Ir_Motion;
package body Ir_Motion is
   

   -- Returns False when motion is detected
   function Ir_Motion_Free return Boolean is
   Ir_State : Boolean;
   begin
      Ir_State:= Ir_Pin.Set;
      return Ir_State;
   end Ir_Motion_Free;


  
end Ir_Motion;
