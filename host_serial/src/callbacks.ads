with Gtk.Button; use Gtk.Button;

with Gtk.Widget;

package Callbacks is
   procedure On_Main_Window_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record);
   procedure On_Ultrasonic_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record);
   procedure On_ServoMotor_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record);
   procedure On_IMU_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record);
   procedure On_GPS_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record);
end Callbacks;
