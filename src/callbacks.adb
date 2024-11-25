with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Main;    use Gtk.Main;

package body Callbacks is
   procedure On_Quit_Button_Clicked (Button : access Gtk_Button_Record'Class) is
   begin
      Put_Line ("Exiting Application...");
   end On_Quit_Button_Clicked;

   procedure On_Ultrasonic_Clicked (Widget : access Gtk_Widget_Record'Class) is
   begin
      Put_Line ("Ultrasonic Sensor Updated!");
   end On_Ultrasonic_Clicked;

   procedure On_ServoMotor_Clicked (Widget : access Gtk_Widget_Record'Class) is
   begin
      Put_Line ("Servo Motor Updated!");
   end On_ServoMotor_Clicked;

   procedure On_IMU_Clicked (Widget : access Gtk_Widget_Record'Class) is
   begin
      Put_Line ("IMU Sensor Updated!");
   end On_IMU_Clicked;

   procedure On_GPS_Clicked (Widget : access Gtk_Widget_Record'Class) is
   begin
      Put_Line ("GPS Sensor Updated!");
   end On_GPS_Clicked;
end Callbacks;
