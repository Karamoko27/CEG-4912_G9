with Gtk.Main;      use Gtk.Main;
with Gtk.Window;    use Gtk.Window;
with Gtk.Button;    use Gtk.Button;
with Gtk.Widget;    use Gtk.Widget;

with Callbacks;     use Callbacks;

procedure GtkAda_Demo is
   Main_Window : Gtk_Window;
   Button      : Gtk_Button;
begin
   Init;
   Gtk_New (Main_Window);
   Set_Title (Main_Window, "GtkAda Demo");
   Set_Default_Size (Main_Window, 300, 300);
   Gtk_New (Button, "Click Me!");
   Button.On_Clicked (On_Button_Clicked'Access);
   Main_Window.Add (Button);
   Show_All (Main_Window);
   Main;
end GtkAda_Demo;
