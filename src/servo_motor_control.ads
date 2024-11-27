with STM32.Device;

package Servo_Motor_Control is

   -- Type représentant un servo-moteur
   type Servo_Motor is private;

   -- Initialise le servo-moteur avec les paramètres nécessaires
   procedure Initialize
     (This               : in out Servo_Motor;
      PWM_Timer          : not null access STM32.Device.Timer;
      PWM_Output         : STM32.Device.GPIO_Point;
      PWM_AF             : STM32.Device.GPIO_Alternate_Function;
      PWM_Output_Channel : STM32.Device.Timer_Channel);

   -- Définit l'angle du servo-moteur
   procedure Set_Angle
     (This  : in out Servo_Motor;
      Angle : Integer);

private
   type Servo_Motor is record
      PWM_Channel : STM32.Device.Timer_Channel;
   end record;

end Servo_Motor_Control;
