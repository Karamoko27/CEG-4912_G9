with Gps; use Gps;
with Peripherals; use Peripherals;

package body Gps is

   

   function Img (M : Message_T) return String is
   begin
      return M.Sentence'Image & " Time: " & M.Time_UTC'Image & " Latitude: " & M.Latitude'Image & " Longitude: " & M.Longitude'Image;
   end Img;

   function Update_State (Data : Character; Current_State : States_T) return States_T is
   begin
      if Data = Reset_Char then
         Screen_Draw.WriteMsg ("UpdtStateif1");
         return Sentence_Type;
      elsif Data = Split_Char then
         Screen_Draw.WriteMsg ("UpdtStateelsif1");
         case Current_State is
            when Sentence_Type =>
               if Sentence_T'Value (Buffer (1 .. Pos_In_buffer)) = GNGGA then
                  Message.Sentence := Sentence_T'Value (Buffer (1 .. Pos_In_buffer)); 
                  Pos_In_buffer := 1;
                  return Time_UTC;
               else
                  return Invalid;
               end if;
            when Time_UTC =>
               Message.Time_UTC := Natural'Value (Buffer (1 .. Pos_In_buffer));
               Pos_In_buffer := 1;
               return Latitude;
            when Latitude =>
               Message.Latitude := Latitude_T'Value (Buffer (1 .. Pos_In_buffer));
               Pos_In_buffer := 1;
               return Longitude;
            when Longitude =>
               Message.Longitude := Longitude_T'Value (Buffer (1 .. Pos_In_buffer));
               Pos_In_buffer := 1;
               Screen_Draw.WriteMsg (Img (Message));
               Message := (others => <>);
               return Invalid;
            when others => 
               Screen_Draw.WriteMsg ("Waiting for Data...");
               return Invalid;
         end case;
      else 
         Screen_Draw.WriteMsg (Img (Message));
         return Invalid;
      end if;
   end Update_State;
   Rcv_Data    : HAL.UInt16;

-- begin
   -- Uart.Initialize;
   -- Serial_IO.Blocking.Initialize(Host);
   -- Configure (Host, Baud_Rate => 115200);

   --  loop
   --     --  Uart.Get_Blocking (STM32.Device.USART_2, Data => Rcv_Data);
   --     Serial_IO.Blocking.Put_Mess(Host, Rcv_Data'Image);
   --     Current_Char := Character'Val (Rcv_Data);
   --     State := Update_State (Current_Char, State);
   --     Buffer (Pos_In_buffer) := Current_Char;
   --     if State /= Invalid then
   --        Pos_In_buffer := Pos_In_buffer + 1;
   --     end if;
   --  end loop;
end Gps;