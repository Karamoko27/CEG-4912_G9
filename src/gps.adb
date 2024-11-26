with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Interfaces; use Interfaces;

procedure GPS is
   -- Type représentant les coordonnées GPS
   type Coordinates is record
      Latitude  : Float;
      Longitude : Float;
   end record;

   -- Simulation de la récupération de données GPS
   function Get_Current_Location return Coordinates is
      -- Remplacez par votre code pour interagir avec le matériel GPS
      Current_Location : Coordinates := (Latitude => 45.4215, Longitude => -75.6972);
   begin
      return Current_Location;
   end Get_Current_Location;

   -- Affichage des coordonnées
   procedure Display_Location (Loc : Coordinates) is
   begin
      Put_Line ("Latitude  : " & Float'Image(Loc.Latitude));
      Put_Line ("Longitude : " & Float'Image(Loc.Longitude));
   end Display_Location;

begin
   Put_Line("Démarrage de l'application GPS...");
   loop
      declare
         Loc : Coordinates := Get_Current_Location;
      begin
         Display_Location(Loc);
         delay 1.0; -- Pause de 1 seconde
      end;
   end loop;
end GPS;
