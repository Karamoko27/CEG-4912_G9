pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;

package body ada_main is

   E069 : Short_Integer; pragma Import (Ada, E069, "ada__tags_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "ada__strings__text_buffers_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "system__bb__timing_events_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__exceptions_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "system__soft_links_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "system__exception_table_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__streams_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__finalization_root_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "ada__finalization_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__storage_pools_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__finalization_masters_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__real_time_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__pool_global_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "system__tasking__protected_objects_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "system__tasking__protected_objects__multiprocessors_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "system__tasking__restricted__stages_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "hal__audio_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "hal__bitmap_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "hal__framebuffer_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "hal__gpio_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "hal__i2c_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "hal__real_time_clock_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "hal__spi_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "hal__time_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "hal__touch_panel_E");
   E247 : Short_Integer; pragma Import (Ada, E247, "hal__uart_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "bitmap_color_conversion_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "bmp_fonts_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "bno055_i2c_io_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "bosch_bno055_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "delay_milliseconds_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "bno055_i2c_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "hershey_fonts_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "bitmapped_drawing_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "ili9341_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "l3gd20_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "ravenscar_time_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "soft_drawing_bitmap_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "memory_mapped_bitmap_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "stm32__adc_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "stm32__dac_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "stm32__dma__interrupts_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "stm32__dma2d_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "stm32__dma2d__interrupt_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "stm32__dma2d__polling_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "stm32__dma2d_bitmap_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "stm32__exti_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "stm32__fmc_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "stm32__i2s_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "stm32__power_control_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "stm32__rtc_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "stm32__sdram_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "stm32__spi_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "stm32__spi__dma_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "stm32__gpio_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "stm32__i2c_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "stm32__i2c__dma_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "stm32__syscfg_E");
   E245 : Short_Integer; pragma Import (Ada, E245, "stm32__usarts_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "stm32__device_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "serial_io_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "message_buffers_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "serial_io__blocking_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "peripherals_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "stm32__ltdc_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "framebuffer_ltdc_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "stmpe811_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "framebuffer_ili9341_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "touch_panel_stmpe811_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "stm32__board_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "last_chance_handler_E");
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
      E060 := E060 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E058 := E058 + 1;
      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E069 := E069 + 1;
      System.Exception_Table'Elab_Body;
      E102 := E102 + 1;
      E104 := E104 + 1;
      E006 := E006 + 1;
      Ada.Streams'Elab_Spec;
      E136 := E136 + 1;
      System.Finalization_Root'Elab_Spec;
      E144 := E144 + 1;
      Ada.Finalization'Elab_Spec;
      E142 := E142 + 1;
      System.Storage_Pools'Elab_Spec;
      E146 := E146 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E141 := E141 + 1;
      Ada.Real_Time'Elab_Body;
      E126 := E126 + 1;
      System.Pool_Global'Elab_Spec;
      E148 := E148 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E204 := E204 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E210 := E210 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E223 := E223 + 1;
      HAL.AUDIO'ELAB_SPEC;
      E228 := E228 + 1;
      HAL.BITMAP'ELAB_SPEC;
      E266 := E266 + 1;
      HAL.FRAMEBUFFER'ELAB_SPEC;
      E267 := E267 + 1;
      HAL.GPIO'ELAB_SPEC;
      E196 := E196 + 1;
      HAL.I2C'ELAB_SPEC;
      E139 := E139 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E232 := E232 + 1;
      HAL.SPI'ELAB_SPEC;
      E167 := E167 + 1;
      HAL.TIME'ELAB_SPEC;
      E285 := E285 + 1;
      HAL.TOUCH_PANEL'ELAB_SPEC;
      E292 := E292 + 1;
      HAL.UART'ELAB_SPEC;
      E247 := E247 + 1;
      E276 := E276 + 1;
      E311 := E311 + 1;
      BNO055_I2C_IO'ELAB_SPEC;
      E134 := E134 + 1;
      E159 := E159 + 1;
      E161 := E161 + 1;
      BNO055_I2C'ELAB_SPEC;
      E132 := E132 + 1;
      E313 := E313 + 1;
      E309 := E309 + 1;
      ILI9341'ELAB_SPEC;
      ILI9341'ELAB_BODY;
      E283 := E283 + 1;
      L3GD20'ELAB_SPEC;
      L3GD20'ELAB_BODY;
      E289 := E289 + 1;
      Ravenscar_Time'Elab_Spec;
      Ravenscar_Time'Elab_Body;
      E287 := E287 + 1;
      Soft_Drawing_Bitmap'Elab_Spec;
      Soft_Drawing_Bitmap'Elab_Body;
      E278 := E278 + 1;
      Memory_Mapped_Bitmap'Elab_Spec;
      Memory_Mapped_Bitmap'Elab_Body;
      E274 := E274 + 1;
      STM32.ADC'ELAB_SPEC;
      E173 := E173 + 1;
      E179 := E179 + 1;
      E216 := E216 + 1;
      E260 := E260 + 1;
      STM32.DMA2D.INTERRUPT'ELAB_BODY;
      E263 := E263 + 1;
      E265 := E265 + 1;
      STM32.DMA2D_BITMAP'ELAB_SPEC;
      STM32.DMA2D_BITMAP'ELAB_BODY;
      E269 := E269 + 1;
      E192 := E192 + 1;
      E252 := E252 + 1;
      STM32.I2S'ELAB_SPEC;
      STM32.I2S'ELAB_BODY;
      E227 := E227 + 1;
      E234 := E234 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E231 := E231 + 1;
      E250 := E250 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E239 := E239 + 1;
      STM32.SPI.DMA'ELAB_SPEC;
      STM32.SPI.DMA'ELAB_BODY;
      E241 := E241 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C.DMA'ELAB_SPEC;
      E190 := E190 + 1;
      STM32.GPIO'ELAB_BODY;
      E185 := E185 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E169 := E169 + 1;
      STM32.I2C'ELAB_BODY;
      E198 := E198 + 1;
      STM32.I2C.DMA'ELAB_BODY;
      E202 := E202 + 1;
      STM32.USARTS'ELAB_BODY;
      E245 := E245 + 1;
      E302 := E302 + 1;
      Message_Buffers'Elab_Spec;
      E296 := E296 + 1;
      Serial_Io.Blocking'Elab_Spec;
      Serial_Io.Blocking'Elab_Body;
      E305 := E305 + 1;
      Peripherals'Elab_Spec;
      E303 := E303 + 1;
      STM32.LTDC'ELAB_BODY;
      E280 := E280 + 1;
      Framebuffer_Ltdc'Elab_Spec;
      Framebuffer_Ltdc'Elab_Body;
      E258 := E258 + 1;
      STMPE811'ELAB_SPEC;
      STMPE811'ELAB_BODY;
      E294 := E294 + 1;
      Framebuffer_Ili9341'Elab_Spec;
      Touch_Panel_Stmpe811'Elab_Spec;
      STM32.BOARD'ELAB_SPEC;
      STM32.BOARD'ELAB_BODY;
      E166 := E166 + 1;
      Framebuffer_Ili9341'Elab_Body;
      E256 := E256 + 1;
      Touch_Panel_Stmpe811'Elab_Body;
      E291 := E291 + 1;
      E163 := E163 + 1;
      Screen_Draw'Elab_Body;
      E307 := E307 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

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
   --   /Users/karamoko/bno055_project/obj/development/delay_milliseconds.o
   --   /Users/karamoko/bno055_project/obj/development/bno055_i2c.o
   --   /Users/karamoko/bno055_project/obj/development/serial_io.o
   --   /Users/karamoko/bno055_project/obj/development/message_buffers.o
   --   /Users/karamoko/bno055_project/obj/development/serial_io-blocking.o
   --   /Users/karamoko/bno055_project/obj/development/peripherals.o
   --   /Users/karamoko/bno055_project/obj/development/screen_draw.o
   --   /Users/karamoko/bno055_project/obj/development/main.o
   --   -L/Users/karamoko/bno055_project/obj/development/
   --   -L/Users/karamoko/bno055_project/obj/development/
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
