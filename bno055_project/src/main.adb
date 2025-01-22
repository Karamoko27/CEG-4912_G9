with Ada.Text_IO; use Ada.Text_IO;
with Bno055_Project;
with BNO055_I2C_IO_Custom;
with HAL.I2C; use HAL.I2C;
with STM32.GPIO; use STM32.GPIO;


procedure Main is
   package BNO055_I2C is new Bno055_Project 
   (IO_Port => BNO055_I2C_IO_Custom.IO_Port,
   Any_IO_Port => BNO055_I2C_IO_Custom.Any_IO_Port,
   Sensor_Data_Buffer => BNO055_I2C_IO_Custom.Read_Buffer);


begin
   -- Initialisation
   BNO055_Project.Initialize (BNO055_I2C);
   BNO055_Project.Set_Mode (BNO055_I2C, Bno055_Project.Operation_Mode_AccOnly);

   -- Lecture des données
   BNO055_I2C.Read_Buffer(IO_Port'Access, Value => BNO055_I2C.X);
   BNO055_I2C.Read_Buffer(IO_Port'Access, Value => BNO055_I2C.Y);
   BNO055_I2C.Read_Buffer(IO_Port'Access, Value => BNO055_I2C.Z);

   -- Affichage des données
   Ada.Text_IO.Put_Line ("Orientation X: " & Integer'Image (BNO055_I2C.X));
   Ada.Text_IO.Put_Line ("Orientation Y: " & Integer'Image (BNO055_I2C.Y));
   Ada.Text_IO.Put_Line ("Orientation Z: " & Integer'Image (BNO055_I2C.Z));
end Main;