with Ada.Text_IO;         use Ada.Text_IO;
with Gtk.Main;            use Gtk.Main;
with Gtk.Window;          use Gtk.Window;
with Gtk.Grid;            use Gtk.Grid;
with Gtk.Button;          use Gtk.Button;
with Gtk.Label;           use Gtk.Label;
with Gtk.Signal;          use Gtk.Signal;
with Ada.Numerics.Discrete_Random;

procedure Gtkada_Demo is
   subtype Random_Range is Integer range 0 .. 200;

   package Random_Generator is new Ada.Numerics.Discrete_Random(Random_Range);
   use Random_Generator;

   Generator : Random_Generator.Generator;

   Window       : Gtk_Window;
   Main_Grid    : Gtk_Grid;
   Quit_Button  : Gtk_Button;

   procedure On_Quit_Button_Clicked (Widget : access Gtk.Widget.Gtk_Widget_Record) is
   begin
      Put_Line("Quit button clicked. Exiting...");
      Main_Quit;
   end On_Quit_Button_Clicked;

begin
   Init;
   Reset(Generator);

   Gtk_New(Window);
   Window.Set_Title("VDI Graphic Controller");
   Window.Set_Default_Size(800, 600);
   Window.Set_Border_Width(10);

   Gtk_New(Main_Grid);
   Main_Grid.Set_Row_Spacing(10);
   Main_Grid.Set_Column_Spacing(10);
   Window.Add(Main_Grid);

   Gtk_New(Quit_Button, "Quit");
   Gtk.Signal.Connect(Quit_Button, "clicked", On_Quit_Button_Clicked'Access);
   Main_Grid.Attach(Quit_Button, Left => 0, Top => 0, Width => 1, Height => 1);

   Window.Show_All;
   Main;
end Gtkada_Demo;
