with Ada.Text_IO; use Ada.Text_IO;

package body Callbacks is
   procedure On_Button_Clicked (Button : access Gtk_Button_Record'Class) is
   begin
      Put_Line ("Button Clicked!");
   end;
end Callbacks;