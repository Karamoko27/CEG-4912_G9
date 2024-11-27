with STM32.Device;
use STM32.Device;

package body Servo_Motor_Control is

   ----------------
   -- Initialize --
   ----------------
   procedure Initialize
     (This               : in out Servo_Motor;
      PWM_Timer          : not null access Timer;
      PWM_Output         : GPIO_Point;
      PWM_AF             : GPIO_Alternate_Function;
      PWM_Output_Channel : Timer_Channel)
   is
   begin
      -- Configurer le timer pour générer un signal PWM à 50 Hz
      Configure_PWM_Timer (PWM_Timer, 50);

      -- Associer la sortie PWM au canal
      This.PWM_Channel.Attach_PWM_Channel
        (PWM_Timer,
         PWM_Output_Channel,
         PWM_Output,
         PWM_AF);

      -- Activer la sortie PWM
      This.PWM_Channel.Enable_Output;

      -- Initialiser à une position neutre (90°)
      Set_Angle (This, 90);
   end Initialize;

   --------------
   -- Set_Angle --
   --------------
   procedure Set_Angle
     (This  : in out Servo_Motor;
      Angle : Integer)
   is
      Duty_Cycle : Float;
   begin
      -- Limiter l'angle entre 0° et 180°
      if Angle < 0 then
         Angle := 0;
      elsif Angle > 180 then
         Angle := 180;
      end if;

      -- Calcul du cycle de travail (duty cycle) en fonction de l'angle
      Duty_Cycle := 5.0 + (Float (Angle) / 180.0) * 5.0;

      -- Appliquer le cycle de travail
      This.PWM_Channel.Set_Duty_Cycle (Duty_Cycle);
   end Set_Angle;

end Servo_Motor_Control;
