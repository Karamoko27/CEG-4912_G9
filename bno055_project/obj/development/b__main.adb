pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;

package body ada_main is

   E071 : Short_Integer; pragma Import (Ada, E071, "ada__tags_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "ada__strings__text_buffers_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "system__bb__timing_events_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__exceptions_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "system__soft_links_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "system__exception_table_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__streams_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__finalization_root_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__finalization_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__storage_pools_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "system__finalization_masters_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__real_time_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__pool_global_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "system__tasking__protected_objects_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__tasking__protected_objects__multiprocessors_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "system__tasking__restricted__stages_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "hal__audio_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "hal__bitmap_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "hal__framebuffer_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "hal__gpio_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "hal__i2c_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "hal__real_time_clock_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "hal__spi_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "hal__time_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "hal__touch_panel_E");
   E249 : Short_Integer; pragma Import (Ada, E249, "hal__uart_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "bitmap_color_conversion_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "bmp_fonts_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "bno055_i2c_io_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "bosch_bno055_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "delay_milliseconds_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "bno055_i2c_E");
   E315 : Short_Integer; pragma Import (Ada, E315, "hershey_fonts_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "bitmapped_drawing_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "ili9341_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "l3gd20_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "ravenscar_time_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "soft_drawing_bitmap_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "memory_mapped_bitmap_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "stm32__adc_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "stm32__dac_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "stm32__dma__interrupts_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "stm32__dma2d_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "stm32__dma2d__interrupt_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "stm32__dma2d__polling_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "stm32__dma2d_bitmap_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "stm32__exti_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "stm32__fmc_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "stm32__i2s_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "stm32__power_control_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "stm32__rtc_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "stm32__sdram_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "stm32__spi_E");
   E243 : Short_Integer; pragma Import (Ada, E243, "stm32__spi__dma_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "stm32__gpio_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "stm32__i2c_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "stm32__i2c__dma_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "stm32__syscfg_E");
   E247 : Short_Integer; pragma Import (Ada, E247, "stm32__usarts_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "stm32__device_E");
   E304 : Short_Integer; pragma Import (Ada, E304, "serial_io_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "message_buffers_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "serial_io__blocking_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "peripherals_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "stm32__ltdc_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "framebuffer_ltdc_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "stmpe811_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "framebuffer_ili9341_E");
   E293 : Short_Integer; pragma Import (Ada, E293, "touch_panel_stmpe811_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "stm32__board_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "last_chance_handler_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "screen_draw_E");

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
      E062 := E062 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E060 := E060 + 1;
      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E071 := E071 + 1;
      System.Exception_Table'Elab_Body;
      E104 := E104 + 1;
      E106 := E106 + 1;
      E008 := E008 + 1;
      Ada.Streams'Elab_Spec;
      E138 := E138 + 1;
      System.Finalization_Root'Elab_Spec;
      E146 := E146 + 1;
      Ada.Finalization'Elab_Spec;
      E144 := E144 + 1;
      System.Storage_Pools'Elab_Spec;
      E148 := E148 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E143 := E143 + 1;
      Ada.Real_Time'Elab_Body;
      E128 := E128 + 1;
      System.Pool_Global'Elab_Spec;
      E150 := E150 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E206 := E206 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E212 := E212 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E225 := E225 + 1;
      HAL.AUDIO'ELAB_SPEC;
      E230 := E230 + 1;
      HAL.BITMAP'ELAB_SPEC;
      E268 := E268 + 1;
      HAL.FRAMEBUFFER'ELAB_SPEC;
      E269 := E269 + 1;
      HAL.GPIO'ELAB_SPEC;
      E198 := E198 + 1;
      HAL.I2C'ELAB_SPEC;
      E141 := E141 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E234 := E234 + 1;
      HAL.SPI'ELAB_SPEC;
      E169 := E169 + 1;
      HAL.TIME'ELAB_SPEC;
      E287 := E287 + 1;
      HAL.TOUCH_PANEL'ELAB_SPEC;
      E294 := E294 + 1;
      HAL.UART'ELAB_SPEC;
      E249 := E249 + 1;
      E278 := E278 + 1;
      E313 := E313 + 1;
      BNO055_I2C_IO'ELAB_SPEC;
      E136 := E136 + 1;
      E161 := E161 + 1;
      E163 := E163 + 1;
      BNO055_I2C'ELAB_SPEC;
      E134 := E134 + 1;
      E315 := E315 + 1;
      E311 := E311 + 1;
      ILI9341'ELAB_SPEC;
      ILI9341'ELAB_BODY;
      E285 := E285 + 1;
      L3GD20'ELAB_SPEC;
      L3GD20'ELAB_BODY;
      E291 := E291 + 1;
      Ravenscar_Time'Elab_Spec;
      Ravenscar_Time'Elab_Body;
      E289 := E289 + 1;
      Soft_Drawing_Bitmap'Elab_Spec;
      Soft_Drawing_Bitmap'Elab_Body;
      E280 := E280 + 1;
      Memory_Mapped_Bitmap'Elab_Spec;
      Memory_Mapped_Bitmap'Elab_Body;
      E276 := E276 + 1;
      STM32.ADC'ELAB_SPEC;
      E175 := E175 + 1;
      E181 := E181 + 1;
      E218 := E218 + 1;
      E262 := E262 + 1;
      STM32.DMA2D.INTERRUPT'ELAB_BODY;
      E265 := E265 + 1;
      E267 := E267 + 1;
      STM32.DMA2D_BITMAP'ELAB_SPEC;
      STM32.DMA2D_BITMAP'ELAB_BODY;
      E271 := E271 + 1;
      E194 := E194 + 1;
      E254 := E254 + 1;
      STM32.I2S'ELAB_SPEC;
      STM32.I2S'ELAB_BODY;
      E229 := E229 + 1;
      E236 := E236 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E233 := E233 + 1;
      E252 := E252 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E241 := E241 + 1;
      STM32.SPI.DMA'ELAB_SPEC;
      STM32.SPI.DMA'ELAB_BODY;
      E243 := E243 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C.DMA'ELAB_SPEC;
      E192 := E192 + 1;
      STM32.GPIO'ELAB_BODY;
      E187 := E187 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E171 := E171 + 1;
      STM32.I2C'ELAB_BODY;
      E200 := E200 + 1;
      STM32.I2C.DMA'ELAB_BODY;
      E204 := E204 + 1;
      STM32.USARTS'ELAB_BODY;
      E247 := E247 + 1;
      E304 := E304 + 1;
      Message_Buffers'Elab_Spec;
      E298 := E298 + 1;
      Serial_Io.Blocking'Elab_Spec;
      Serial_Io.Blocking'Elab_Body;
      E307 := E307 + 1;
      Peripherals'Elab_Spec;
      E305 := E305 + 1;
      STM32.LTDC'ELAB_BODY;
      E282 := E282 + 1;
      Framebuffer_Ltdc'Elab_Spec;
      Framebuffer_Ltdc'Elab_Body;
      E260 := E260 + 1;
      STMPE811'ELAB_SPEC;
      STMPE811'ELAB_BODY;
      E296 := E296 + 1;
      Framebuffer_Ili9341'Elab_Spec;
      Touch_Panel_Stmpe811'Elab_Spec;
      STM32.BOARD'ELAB_SPEC;
      STM32.BOARD'ELAB_BODY;
      E168 := E168 + 1;
      Framebuffer_Ili9341'Elab_Body;
      E258 := E258 + 1;
      Touch_Panel_Stmpe811'Elab_Body;
      E293 := E293 + 1;
      E165 := E165 + 1;
      Screen_Draw'Elab_Body;
      E309 := E309 + 1;
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
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/delay_milliseconds.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/bno055_i2c.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/serial_io.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/message_buffers.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/serial_io-blocking.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/peripherals.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/screen_draw.o
   --   /Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/main.o
   --   -L/Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/
   --   -L/Users/karamoko/Desktop/CEG4912/BonCode/CEG-4912_G9/bno055_project/obj/development/
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
