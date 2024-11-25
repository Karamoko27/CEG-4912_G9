
with Serial_IO;                     use Serial_IO;
with Ada.Synchronous_Task_Control;  use Ada.Synchronous_Task_Control;

package Message_Buffers is
   pragma Elaborate_Body;

   type Message (Physical_Size : Positive) is tagged limited private;

   function Content (This : Message) return String with Inline;

   function Length (This : Message) return Natural with Inline;

   function Content_At (This : Message;  Index : Positive) return Character with
     Pre => Index <= Length (This),
     Inline;

   procedure Clear (This : in out Message) with
     Post => Length (This) = 0 and Content (This) = "",
     Inline;

   procedure Append (This : in out Message;  Value : Character) with
     Pre  => Length (This) < This.Physical_Size,
     Post => Content_At (This, Length (This)) = Value,
     Inline;

   procedure Set (This : in out Message;  To : String) with
     Pre  => To'Length <= This.Physical_Size,
     Post => Length (This) = To'Length and Content (This) = To,
     Inline;

   procedure Set (This : in out Message;  To : Character) with
     Post => Length (This) = 1 and Content_At (This, 1) = To,
     Inline;

   procedure Set_Terminator (This : in out Message;  To : Character) with
     Post => Terminator (This) = To,
     Inline;
   --  Specify the character that signals the end of an incoming message
   --  from the sender's point of view, ie the "logical" end of a message,
   --  as opposed to the physical capacity.

   function Terminator (This : Message) return Character with Inline;
   --  The logical end of message character (eg, CR). Either the value of a
   --  prior call to Set_Terminator, or the character Nul if no terminator has
   --  ever been set. The terminator character, if received, is not stored in
   --  the message into which characters are being received.

   procedure Await_Transmission_Complete (This : in out Message) with Inline;
   --  Used for non-blocking output, to wait until the last char has been sent.

   procedure Await_Reception_Complete (This : in out Message) with Inline;
   --  Used for non-blocking input, to wait until the last char has been
   --  received.

   procedure Signal_Transmission_Complete (This : in out Message) with Inline;

   procedure Signal_Reception_Complete (This : in out Message) with Inline;

   procedure Note_Error (This : in out Message; Condition : Error_Conditions)
     with Inline;

   function Errors_Detected (This : Message) return Error_Conditions with Inline;

   procedure Clear_Errors (This : in out Message) with Inline;

   function Has_Error (This : Message; Condition : Error_Conditions)
      return Boolean with Inline;

private

   type Message (Physical_Size : Positive) is tagged limited record
      Content               : String (1 .. Physical_Size);
      Length                : Natural := 0;
      Reception_Complete    : Suspension_Object;
      Transmission_Complete : Suspension_Object;
      Terminator            : Character := ASCII.NUL;
      Error_Status          : Error_Conditions := No_Error_Detected;
   end record;

end Message_Buffers;
