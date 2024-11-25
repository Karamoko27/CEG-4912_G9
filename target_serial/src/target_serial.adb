with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
--  The "last chance handler" is the user-defined routine that is called when
--  an exception is propagated. We need it in the executable, therefore it
--  must be somewhere in the closure of the context clauses.

with Peripherals_Nonblocking;    use Peripherals_Nonblocking;
with Serial_IO.Nonblocking;      use Serial_IO.Nonblocking;
with Message_Buffers;            use Message_Buffers;

use Serial_IO;

procedure Target_Serial is

   Incoming : aliased Message (Physical_Size => 1024);  -- arbitrary size
   Outgoing : aliased Message (Physical_Size => 1024);  -- arbitrary size

   procedure Send (This : String);

   procedure Send (This : String) is
   begin
      Set (Outgoing, To => This);
      Nonblocking.Send (COM, Outgoing'Unchecked_Access);
      Await_Transmission_Complete (Outgoing);
      --  Send can/will return before the entire message has been sent
   end Send;

begin
   Initialize_Hardware (COM);
   Configure (COM, Baud_Rate => 115_200);

   Incoming.Set_Terminator (To => ASCII.CR);
   Send ("Enter text, terminated by CR.");
   loop
      Nonblocking.Receive (COM, Incoming'Unchecked_Access);
      Await_Reception_Complete (Incoming);
      Send ("Received : " & Incoming.Content);
   end loop;
end Target_Serial;

*