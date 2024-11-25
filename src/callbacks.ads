with Gtk.Button; use Gtk.Button;

with Gtk.Widget; use Gtk.Widget;

package Callbacks is

   procedure On_Quit_Button_Clicked (Button : access Gtk_Button_Record'Class);
   procedure On_Ultrasonic_Clicked (Widget : access Gtk_Widget_Record'Class);
   procedure On_ServoMotor_Clicked (Widget : access Gtk_Widget_Record'Class);
   procedure On_IMU_Clicked        (Widget : access Gtk_Widget_Record'Class);
   procedure On_GPS_Clicked        (Widget : access Gtk_Widget_Record'Class);
end Callbacks;
