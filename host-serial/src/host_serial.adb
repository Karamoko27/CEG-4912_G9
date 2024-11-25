

with GNAT.IO;                    use GNAT.IO;
with GNAT.Serial_Communications; use GNAT.Serial_Communications;

procedure Host_Serial is
   COM  : aliased Serial_Port;
   COM3 : constant Port_Name := Name (3);

   Outgoing : String (1 .. 1024); -- arbitrary
   Last     : Natural;
begin
   COM.Open (COM3);
   COM.Set (Rate => B115200, Block => False);

   loop
      Put ("> ");
      Get_Line (Outgoing, Last);
      exit when Last = Outgoing'First - 1;

      Put_Line ("Sending: '" & Outgoing (1 .. Last) & "'");

      String'Output (COM'Access, Outgoing (1 .. Last));

      declare
         Incoming : constant String := String'Input (COM'Access);
      begin
         Put_Line ("From board: " & Incoming);
      end;
   end loop;

   COM.Close;
end Host_Serial;
