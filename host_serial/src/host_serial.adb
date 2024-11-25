with GtkAda; use GtkAda;
with GNAT.Serial; use GNAT.Serial;
with Ada.Text_IO;
with Callbacks;     use Callbacks;

procedure Host_serial is
   -- Déclarations des fenêtres et labels
   Window : Gtk.Window;
   GPS_Label : Gtk.Label;
   IMU_Label : Gtk.Label;
   Servo_Button : Gtk.Button;
   Direction_Label : Gtk.Label;
   
   Latitude : Float := 0.0;
   Longitude : Float := 0.0;
   IMU_Orientation : String := "Stable";
   Direction : Integer := 0; -- Direction du servo

   -- Procedure pour simuler l'affichage des données
   procedure Update_Data is
   begin
      -- Remplacez ces lignes par des appels réels aux fonctions GPS et IMU
      Latitude := Latitude + 0.1;  -- Exemple pour simuler un changement de latitude
      Longitude := Longitude + 0.1; -- Exemple pour simuler un changement de longitude
      IMU_Orientation := "Moving";  -- Exemple pour simuler un changement d'orientation IMU

      -- Mise à jour des labels dans l'interface
      Set_Text (GPS_Label, "GPS: Latitude = " & Float'Image(Latitude) & ", Longitude = " & Float'Image(Longitude));
      Set_Text (IMU_Label, "IMU: Orientation = " & IMU_Orientation);
      Set_Text (Direction_Label, "Servo Direction: " & Integer'Image(Direction));
   end Update_Data;

   -- Callback pour le bouton Servo
   procedure Servo_Control_Callback (Button : Gtk.Button) is
   begin
      -- Contrôlez la direction du servo avec ce callback
      Direction := (Direction + 10) mod 360; -- Exemple de changement de direction du servo
      Update_Data; -- Mettre à jour les labels après modification
   end Servo_Control_Callback;

begin
   -- Initialisation de la fenêtre GTK
   Gtk_New (Window);
   Set_Title (Window, "Mon projet GPS et Servo");
   Set_Default_Size (Window, 400, 300);

   -- Création des labels pour afficher les données
   GPS_Label := Gtk.Label'("GPS: Latitude = " & Float'Image(Latitude) & ", Longitude = " & Float'Image(Longitude));
   IMU_Label := Gtk.Label'("IMU: Orientation = " & IMU_Orientation);
   Direction_Label := Gtk.Label'("Servo Direction: " & Integer'Image(Direction));
   
   -- Création du bouton Servo
   Servo_Button := Gtk.Button' ("Control Servo");
   Set_On_Clicked (Servo_Button, Servo_Control_Callback);

   -- Ajouter les widgets à la fenêtre
   Gtk.Container_Add (Gtk.Container'Access (Window), GPS_Label);
   Gtk.Container_Add (Gtk.Container'Access (Window), IMU_Label);
   Gtk.Container_Add (Gtk.Container'Access (Window), Direction_Label);
   Gtk.Container_Add (Gtk.Container'Access (Window), Servo_Button);

   -- Afficher la fenêtre
   Show_All (Window);

   -- Mettre à jour les données toutes les secondes
   loop
      delay 1.0;  -- Mettre à jour toutes les 1 seconde
      Update_Data;
   end loop;
end ;
