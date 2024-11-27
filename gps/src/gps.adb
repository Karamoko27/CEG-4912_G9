with Ada.Text_IO; use Ada.Text_IO;

procedure GPS is
   -- Déclare un fichier pour le port série
   Serial_Port : Ada.Text_IO.File_Type;

   -- Buffer pour lire les données GPS simulées
   Buffer : String (1 .. 256) := (others => ' ');
   Last   : Natural;

   Simulated : Boolean := True; -- Mode simulation si le port n'est pas trouvé

begin
   Put_Line("Démarrage de l'application GPS...");

   if Simulated then
      -- Mode simulation : données simulées
      Put_Line("Mode simulation activé : pas de GPS connecté.");
      loop
         delay 1.0; -- Pause pour simuler la lecture
         
         declare
            Simulated_Data : constant String :=
               "$GPGGA,123519,4807.038,N,01131.000,E,1,08,0.9,545.4,M,46.9,M,,*47";
         begin
            -- Copier les données simulées dans Buffer en respectant sa taille
            Buffer(1 .. Simulated_Data'Length) := Simulated_Data;
            Last := Simulated_Data'Length;
            Put_Line("Données GPS simulées : " & Buffer(1 .. Last));
         end;
      end loop;

   else
      -- Mode réel : tentative d'ouverture du port série
      Ada.Text_IO.Open(File => Serial_Port,
                       Mode => Ada.Text_IO.In_File,
                       Name => "/dev/cu.usbserial-xxxx"); -- Remplacez par le bon nom

      loop
         -- Lire les données du port série
         Ada.Text_IO.Get_Line(File => Serial_Port,
                              Item => Buffer,
                              Last => Last);
         Put_Line("Données GPS reçues : " & Buffer(1 .. Last));
      end loop;

      -- Ferme le port série
      Ada.Text_IO.Close(Serial_Port);
   end if;
end GPS;
