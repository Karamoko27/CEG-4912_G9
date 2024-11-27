with STM32.Device; use STM32.Device;
with Servo_Motor_Control; use Servo_Motor_Control;

procedure Servo_Motor_Control_Main is
   My_Servo : Servo_Motor;
begin
   -- Initialisation du servo-moteur
   Initialize
     (My_Servo,
      PWM_Timer          => Timer2'Access,
      PWM_Output         => GPIO_Point'(GPIOB, 6), -- Exemple GPIO
      PWM_AF             => Alternate_Function2,
      PWM_Output_Channel => Channel1);

   -- Déplacer le servo à différentes positions
   Set_Angle (My_Servo, 0);   -- Déplacer à 0°
   Delay_Seconds (1);

   Set_Angle (My_Servo, 90);  -- Déplacer à 90°
   Delay_Seconds (1);

   Set_Angle (My_Servo, 180); -- Déplacer à 180°
   Delay_Seconds (1);

   -- Retour à la position neutre
   Set_Angle (My_Servo, 90);
end Servo_Motor_Control_Main;
