pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__gps.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__gps.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;

package body ada_main is

   E109 : Short_Integer; pragma Import (Ada, E109, "ada__tags_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__strings__text_buffers_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "system__bb__timing_events_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "ada__exceptions_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "system__soft_links_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "system__exception_table_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "ada__streams_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__finalization_root_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__finalization_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "system__storage_pools_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__pool_global_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "system__tasking__protected_objects_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "system__tasking__protected_objects__multiprocessors_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "system__tasking__restricted__stages_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "hal__audio_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "hal__bitmap_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "hal__framebuffer_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "hal__gpio_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "hal__i2c_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "hal__real_time_clock_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "hal__spi_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "hal__time_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "hal__touch_panel_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "hal__uart_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "bitmap_color_conversion_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "bmp_fonts_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "bno055_i2c_io_E");
   E293 : Short_Integer; pragma Import (Ada, E293, "bosch_bno055_E");
   E295 : Short_Integer; pragma Import (Ada, E295, "delay_milliseconds_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "bno055_i2c_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "hershey_fonts_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "bitmapped_drawing_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "ili9341_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "l3gd20_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "ravenscar_time_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "soft_drawing_bitmap_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "memory_mapped_bitmap_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "stm32__adc_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "stm32__dac_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "stm32__dma__interrupts_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "stm32__dma2d_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "stm32__dma2d__interrupt_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "stm32__dma2d__polling_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "stm32__dma2d_bitmap_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "stm32__exti_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "stm32__fmc_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "stm32__i2s_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "stm32__power_control_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "stm32__rtc_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "stm32__sdram_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "stm32__spi_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "stm32__spi__dma_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "stm32__gpio_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "stm32__i2c_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "stm32__i2c__dma_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "stm32__syscfg_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "stm32__usarts_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "stm32__device_E");
   E297 : Short_Integer; pragma Import (Ada, E297, "serial_io_E");
   E301 : Short_Integer; pragma Import (Ada, E301, "message_buffers_E");
   E299 : Short_Integer; pragma Import (Ada, E299, "serial_io__blocking_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "peripherals_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "stm32__ltdc_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "framebuffer_ltdc_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "stmpe811_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "framebuffer_ili9341_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "touch_panel_stmpe811_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "stm32__board_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "last_chance_handler_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "screen_draw_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Exception_Tracebacks_Symbolic : Integer;
      pragma Import (C, Exception_Tracebacks_Symbolic, "__gl_exception_tracebacks_symbolic");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := '8';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, True, True, False, False, False, False, True, 
           False, False, False, False, False, False, False, False, 
           True, True, True, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, True, True, False, False, True, True, 
           False, False, False, True, False, False, False, False, 
           True, False, True, True, False, False, False, True, 
           False, True, True, True, True, True, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, True, False, False, False, False, False, False, 
           False, False, False, False, True, True, False, True, 
           False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, False, True, True, False, False, 
           False, False, False, True, True, True, True, False, 
           False, False, False, True, False, False, True, True, 
           False, True, True, False, True, True, True, True, 
           False, False, False, False, False, True, False, False, 
           True, False, False, False, True, True, False, False, 
           False, True, False, False, False, True, False, False, 
           False, False, False, False, False, False, False, False, 
           False, True, True, True, False, False, True, False, 
           True, True, True, False, True, True, False, False, 
           True, True, True, False, False, False, False, False, 
           False, False, False, True, False, False, False, False, 
           True, False),
         Count => (0, 0, 0, 1, 0, 0, 0, 0, 5, 0),
         Unknown => (False, False, False, False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Exception_Tracebacks_Symbolic := 1;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Ada.Strings.Text_Buffers'Elab_Spec;
      E100 := E100 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E098 := E098 + 1;
      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E109 := E109 + 1;
      System.Exception_Table'Elab_Body;
      E042 := E042 + 1;
      E044 := E044 + 1;
      E016 := E016 + 1;
      Ada.Streams'Elab_Spec;
      E139 := E139 + 1;
      System.Finalization_Root'Elab_Spec;
      E145 := E145 + 1;
      Ada.Finalization'Elab_Spec;
      E143 := E143 + 1;
      System.Storage_Pools'Elab_Spec;
      E147 := E147 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E142 := E142 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      E149 := E149 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E196 := E196 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E202 := E202 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E215 := E215 + 1;
      HAL.AUDIO'ELAB_SPEC;
      E220 := E220 + 1;
      HAL.BITMAP'ELAB_SPEC;
      E258 := E258 + 1;
      HAL.FRAMEBUFFER'ELAB_SPEC;
      E259 := E259 + 1;
      HAL.GPIO'ELAB_SPEC;
      E180 := E180 + 1;
      HAL.I2C'ELAB_SPEC;
      E192 := E192 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E224 := E224 + 1;
      HAL.SPI'ELAB_SPEC;
      E137 := E137 + 1;
      HAL.TIME'ELAB_SPEC;
      E277 := E277 + 1;
      HAL.TOUCH_PANEL'ELAB_SPEC;
      E284 := E284 + 1;
      HAL.UART'ELAB_SPEC;
      E239 := E239 + 1;
      E268 := E268 + 1;
      E311 := E311 + 1;
      BNO055_I2C_IO'ELAB_SPEC;
      E291 := E291 + 1;
      E293 := E293 + 1;
      E295 := E295 + 1;
      BNO055_I2C'ELAB_SPEC;
      E289 := E289 + 1;
      E313 := E313 + 1;
      E309 := E309 + 1;
      ILI9341'ELAB_SPEC;
      ILI9341'ELAB_BODY;
      E275 := E275 + 1;
      L3GD20'ELAB_SPEC;
      L3GD20'ELAB_BODY;
      E281 := E281 + 1;
      Ravenscar_Time'Elab_Spec;
      Ravenscar_Time'Elab_Body;
      E279 := E279 + 1;
      Soft_Drawing_Bitmap'Elab_Spec;
      Soft_Drawing_Bitmap'Elab_Body;
      E270 := E270 + 1;
      Memory_Mapped_Bitmap'Elab_Spec;
      Memory_Mapped_Bitmap'Elab_Body;
      E266 := E266 + 1;
      STM32.ADC'ELAB_SPEC;
      E157 := E157 + 1;
      E163 := E163 + 1;
      E208 := E208 + 1;
      E252 := E252 + 1;
      STM32.DMA2D.INTERRUPT'ELAB_BODY;
      E255 := E255 + 1;
      E257 := E257 + 1;
      STM32.DMA2D_BITMAP'ELAB_SPEC;
      STM32.DMA2D_BITMAP'ELAB_BODY;
      E261 := E261 + 1;
      E176 := E176 + 1;
      E244 := E244 + 1;
      STM32.I2S'ELAB_SPEC;
      STM32.I2S'ELAB_BODY;
      E219 := E219 + 1;
      E226 := E226 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E223 := E223 + 1;
      E242 := E242 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E231 := E231 + 1;
      STM32.SPI.DMA'ELAB_SPEC;
      STM32.SPI.DMA'ELAB_BODY;
      E233 := E233 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C.DMA'ELAB_SPEC;
      E174 := E174 + 1;
      STM32.GPIO'ELAB_BODY;
      E169 := E169 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E153 := E153 + 1;
      STM32.I2C'ELAB_BODY;
      E189 := E189 + 1;
      STM32.I2C.DMA'ELAB_BODY;
      E194 := E194 + 1;
      STM32.USARTS'ELAB_BODY;
      E237 := E237 + 1;
      E297 := E297 + 1;
      Message_Buffers'Elab_Spec;
      E301 := E301 + 1;
      Serial_Io.Blocking'Elab_Spec;
      Serial_Io.Blocking'Elab_Body;
      E299 := E299 + 1;
      Peripherals'Elab_Spec;
      E287 := E287 + 1;
      STM32.LTDC'ELAB_BODY;
      E272 := E272 + 1;
      Framebuffer_Ltdc'Elab_Spec;
      Framebuffer_Ltdc'Elab_Body;
      E250 := E250 + 1;
      STMPE811'ELAB_SPEC;
      STMPE811'ELAB_BODY;
      E286 := E286 + 1;
      Framebuffer_Ili9341'Elab_Spec;
      Touch_Panel_Stmpe811'Elab_Spec;
      STM32.BOARD'ELAB_SPEC;
      STM32.BOARD'ELAB_BODY;
      E136 := E136 + 1;
      Framebuffer_Ili9341'Elab_Body;
      E248 := E248 + 1;
      Touch_Panel_Stmpe811'Elab_Body;
      E283 := E283 + 1;
      E131 := E131 + 1;
      Screen_Draw'Elab_Body;
      E307 := E307 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_gps");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/delay_milliseconds.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/bno055_i2c.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/serial_io.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/message_buffers.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/serial_io-blocking.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/peripherals.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/screen_draw.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/gps.o
   --   -L/Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/
   --   -L/Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/gps/obj/development/
   --   -L/Users/karamoko/.local/share/alire/builds/embedded_components_0.2.0_37c39b23/e57a61e5227db4e924f74ca5fd028592cc309243acfdcdbc26dae612ca86268f/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/adl_middleware_0.2.0_623c6913/fbb7e94a149915209229876b35886a02bfa51ec2fd7a9c0aaa119f6c0390c238/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/hal_0.3.0_095ae514/45a7230b1521a74e4d762c42ec802710efe319e84e7227b385f535fafd1bbbac/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/stm32_gui_0.1.0_e2e5c9d4/3ee674d2b93dc9506389e115fb01936ceddd850a63beae621d8cf36a7eb596b0/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/stm32_hal_0.1.0_9276ee80/fe5bdb04320c4dd2e59b097788cf1b581555a593cfaa0689c0c31d2e4b7bbbfe/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/cortex_m_0.5.0_39667d15/f454f4f06c95bd1d015688e883ae989ddf29833f0c0d0a3a5bb3d2d58fd06244/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/stm32f429disco_0.1.0_aa5fe0cb/889ab963feec0991851c3be89f19344fb5b82b13dbe59edcaca23d6420e4ffef/lib/
   --   -L/users/karamoko/.local/share/alire/toolchains/gnat_arm_elf_12.2.1_f4bfd822/arm-eabi/lib/gnat/embedded-stm32f429disco/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
