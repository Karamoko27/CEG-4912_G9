with Ada.Text_IO; use Ada.Text_IO;

package body Callbacks is

   procedure On_Main_Window_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record) is
   begin
      Put_Line("Main Window Button Clicked!");
   end On_Main_Window_Clicked;

   procedure On_Ultrasonic_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record) is
   begin
      Put_Line("Ultrasonic Sensor Button Clicked!");
   end On_Ultrasonic_Clicked;

   procedure On_ServoMotor_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record) is
   begin
      Put_Line("Servo Motor Button Clicked!");
   end On_ServoMotor_Clicked;

   procedure On_IMU_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record) is
   begin
      Put_Line("IMU Sensor Button Clicked!");
   end On_IMU_Clicked;

   procedure On_GPS_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record) is
   begin
      Put_Line("GPS Sensor Button Clicked!");
   end On_GPS_Clicked;

end Callbacks;
