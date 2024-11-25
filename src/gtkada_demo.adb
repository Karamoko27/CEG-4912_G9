with Ada.Text_IO;         use Ada.Text_IO;
with Gtk.Main;            use Gtk.Main;
with Gtk.Window;          use Gtk.Window;
with Gtk.Grid;            use Gtk.Grid;
with Gtk.Button;          use Gtk.Button;
with Gtk.Label;           use Gtk.Label;
with Gtk.Widget;          use Gtk.Widget;
with Gtk.Css_Provider;    use Gtk.Css_Provider;
with Gtk.Style_Context;   use Gtk.Style_Context;
--with Gtk.Screen;          use Gtk.Screen; -- Correct import pour l'écran
with Callbacks;           use Callbacks;

procedure Gtkada_demo is
   -- Fenêtre principale
   Window       : Gtk_Window;
   Main_Grid    : Gtk_Grid;

   -- Capteurs et composants associés
   Ultrasonic_Label  : Gtk_Label;
   Ultrasonic_Value  : Gtk_Label;
   Ultrasonic_Button : Gtk_Button;

   Servo_Label  : Gtk_Label;
   Servo_Value  : Gtk_Label;
   Servo_Button : Gtk_Button;

   IMU_Label  : Gtk_Label;
   IMU_Value  : Gtk_Label;
   IMU_Button : Gtk_Button;

   GPS_Label  : Gtk_Label;
   GPS_Value  : Gtk_Label;
   GPS_Button : Gtk_Button;

   Quit_Button : Gtk_Button;

   -- Mise à jour des valeurs (Simulation)
   procedure Update_Values is
   begin
      Ultrasonic_Value.Set_Text ("Distance: 100 cm");
      Servo_Value.Set_Text ("Angle: 45°");
      IMU_Value.Set_Text ("Orientation: X=1.0, Y=0.5, Z=0.8");
      GPS_Value.Set_Text ("Position: Lat=45.4215, Lon=-75.6972");
   end Update_Values;

begin
   -- Initialisation GTK
   Init;

   -- CSS : Appliquer un style personnalisé
   declare
      Css_Provider : Gtk_Css_Provider;
   begin
      Gtk_New (Css_Provider);

      -- Charger le fichier CSS depuis le répertoire "assets"
      --if Css_Provider.Load_From_Path ("assets/styles.css") then
         --Gtk.Style_Context.Add_Provider_For_Screen
           --(Gtk.Screen.Get_Default,
           -- Css_Provider,
            --Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
      --else
         --Put_Line ("Erreur lors du chargement du fichier CSS");
      --end if;
   end;

   -- Création de la fenêtre principale
   Gtk_New (Window);
   Window.Set_Title ("Real-Time Sensor Interface");
   Window.Set_Default_Size (800, 600);
   Window.Set_Border_Width (10);

   -- Création de la grille principale
   Gtk_New (Main_Grid);
   Main_Grid.Set_Row_Spacing (10);
   Main_Grid.Set_Column_Spacing (10);
   Window.Add (Main_Grid);

   -- Ultrasonic Sensor
   Gtk_New (Ultrasonic_Label, "Ultrasonic Sensor");
   Gtk_New (Ultrasonic_Value, "Distance: N/A");
   Gtk_New (Ultrasonic_Button, "Update Ultrasonic");
   Main_Grid.Attach (Ultrasonic_Label, 0, 0, 2, 1);
   Main_Grid.Attach (Ultrasonic_Value, 2, 0, 4, 1);
   Main_Grid.Attach (Ultrasonic_Button, 6, 0, 2, 1);
   --Ultrasonic_Button.On_Clicked (Callbacks.On_Ultrasonic_Clicked'Access);

   -- Servo Motor
   Gtk_New (Servo_Label, "Servo Motor");
   Gtk_New (Servo_Value, "Angle: N/A");
   Gtk_New (Servo_Button, "Update Servo");
   Main_Grid.Attach (Servo_Label, 0, 1, 2, 1);
   Main_Grid.Attach (Servo_Value, 2, 1, 4, 1);
   Main_Grid.Attach (Servo_Button, 6, 1, 2, 1);
   --Servo_Button.On_Clicked (Callbacks.On_ServoMotor_Clicked'Access);

   -- IMU Sensor
   Gtk_New (IMU_Label, "IMU Sensor");
   Gtk_New (IMU_Value, "Orientation: N/A");
   Gtk_New (IMU_Button, "Update IMU");
   Main_Grid.Attach (IMU_Label, 0, 2, 2, 1);
   Main_Grid.Attach (IMU_Value, 2, 2, 4, 1);
   Main_Grid.Attach (IMU_Button, 6, 2, 2, 1);
   --IMU_Button.On_Clicked (Callbacks.On_IMU_Clicked'Access);

   -- GPS Sensor
   Gtk_New (GPS_Label, "GPS Sensor");
   Gtk_New (GPS_Value, "Position: N/A");
   Gtk_New (GPS_Button, "Update GPS");
   Main_Grid.Attach (GPS_Label, 0, 3, 2, 1);
   Main_Grid.Attach (GPS_Value, 2, 3, 4, 1);
   Main_Grid.Attach (GPS_Button, 6, 3, 2, 1);
   --GPS_Button.On_Clicked (Callbacks.On_GPS_Clicked'Access);

   -- Bouton Quit
   Gtk_New (Quit_Button, "Quit");
   Main_Grid.Attach (Quit_Button, 3, 4, 2, 1);
   --Quit_Button.On_Clicked (Callbacks.On_Quit_Button_Clicked'Access);

   -- Afficher les composants
   Window.Show_All;

   -- Simuler une mise à jour
   Update_Values;

   -- Lancer l'application GTK
   Main;
end Gtkada_demo;
