with STM32.GPIO;use STM32.GPIO;
with STM32;use STM32;
with STM32.Device;use STM32.Device;
with Screen_Draw; use Screen_Draw;

package Ir_Motion is
   Ir_Pin: STM32.GPIO.GPIO_Point := PA0;
   Ir_Config : constant STM32.GPIO.GPIO_Port_Configuration := (
      Mode      => Mode_In,
      Resistors => Pull_Up
   );
   function Ir_Motion_Free return Boolean;
end Ir_Motion;