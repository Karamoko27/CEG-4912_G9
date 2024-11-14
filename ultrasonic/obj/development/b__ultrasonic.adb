pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__ultrasonic.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__ultrasonic.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;

package body ada_main is

   E109 : Short_Integer; pragma Import (Ada, E109, "ada__tags_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__strings__text_buffers_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "system__bb__timing_events_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "ada__exceptions_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "system__soft_links_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "system__exception_table_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "ada__streams_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__finalization_root_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__finalization_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__storage_pools_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__pool_global_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "system__tasking__protected_objects_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "system__tasking__protected_objects__multiprocessors_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "system__tasking__restricted__stages_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "hal__audio_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "hal__bitmap_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "hal__framebuffer_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "hal__gpio_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "hal__i2c_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "hal__real_time_clock_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "hal__spi_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "hal__time_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "hal__touch_panel_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "hal__uart_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "bitmap_color_conversion_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "bmp_fonts_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "hershey_fonts_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "bitmapped_drawing_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "ili9341_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "l3gd20_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "ravenscar_time_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "soft_drawing_bitmap_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "memory_mapped_bitmap_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "stm32__adc_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "stm32__dac_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "stm32__dma__interrupts_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "stm32__dma2d_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "stm32__dma2d__interrupt_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "stm32__dma2d__polling_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "stm32__dma2d_bitmap_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "stm32__exti_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "stm32__fmc_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "stm32__i2s_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "stm32__power_control_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "stm32__rtc_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "stm32__sdram_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "stm32__spi_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "stm32__spi__dma_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "stm32__gpio_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "stm32__i2c_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "stm32__i2c__dma_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "stm32__syscfg_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "stm32__usarts_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "stm32__device_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "stm32__ltdc_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "framebuffer_ltdc_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "stmpe811_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "framebuffer_ili9341_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "touch_panel_stmpe811_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "stm32__board_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "screen_draw_E");

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
           True, False, True, True, False, False, False, False, 
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
           True, False, False, False, True, True, False, True, 
           False, True, False, False, False, True, False, False, 
           False, False, False, False, False, False, False, False, 
           False, True, True, True, False, False, True, False, 
           True, True, True, False, True, True, False, False, 
           True, True, True, False, False, False, False, False, 
           False, False, False, True, False, False, False, False, 
           True, False),
         Count => (0, 0, 0, 1, 0, 0, 0, 0, 4, 0),
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
      E134 := E134 + 1;
      System.Finalization_Root'Elab_Spec;
      E140 := E140 + 1;
      Ada.Finalization'Elab_Spec;
      E138 := E138 + 1;
      System.Storage_Pools'Elab_Spec;
      E142 := E142 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E137 := E137 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      E144 := E144 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E209 := E209 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E215 := E215 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E228 := E228 + 1;
      HAL.AUDIO'ELAB_SPEC;
      E233 := E233 + 1;
      HAL.BITMAP'ELAB_SPEC;
      E132 := E132 + 1;
      HAL.FRAMEBUFFER'ELAB_SPEC;
      E147 := E147 + 1;
      HAL.GPIO'ELAB_SPEC;
      E193 := E193 + 1;
      HAL.I2C'ELAB_SPEC;
      E205 := E205 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E237 := E237 + 1;
      HAL.SPI'ELAB_SPEC;
      E161 := E161 + 1;
      HAL.TIME'ELAB_SPEC;
      E266 := E266 + 1;
      HAL.TOUCH_PANEL'ELAB_SPEC;
      E263 := E263 + 1;
      HAL.UART'ELAB_SPEC;
      E148 := E148 + 1;
      E154 := E154 + 1;
      E156 := E156 + 1;
      E158 := E158 + 1;
      E152 := E152 + 1;
      ILI9341'ELAB_SPEC;
      ILI9341'ELAB_BODY;
      E291 := E291 + 1;
      L3GD20'ELAB_SPEC;
      L3GD20'ELAB_BODY;
      E260 := E260 + 1;
      Ravenscar_Time'Elab_Spec;
      Ravenscar_Time'Elab_Body;
      E265 := E265 + 1;
      Soft_Drawing_Bitmap'Elab_Spec;
      Soft_Drawing_Bitmap'Elab_Body;
      E286 := E286 + 1;
      Memory_Mapped_Bitmap'Elab_Spec;
      Memory_Mapped_Bitmap'Elab_Body;
      E284 := E284 + 1;
      STM32.ADC'ELAB_SPEC;
      E170 := E170 + 1;
      E176 := E176 + 1;
      E221 := E221 + 1;
      E272 := E272 + 1;
      STM32.DMA2D.INTERRUPT'ELAB_BODY;
      E275 := E275 + 1;
      E277 := E277 + 1;
      STM32.DMA2D_BITMAP'ELAB_SPEC;
      STM32.DMA2D_BITMAP'ELAB_BODY;
      E279 := E279 + 1;
      E189 := E189 + 1;
      E256 := E256 + 1;
      STM32.I2S'ELAB_SPEC;
      STM32.I2S'ELAB_BODY;
      E232 := E232 + 1;
      E239 := E239 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E236 := E236 + 1;
      E254 := E254 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E244 := E244 + 1;
      STM32.SPI.DMA'ELAB_SPEC;
      STM32.SPI.DMA'ELAB_BODY;
      E246 := E246 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C.DMA'ELAB_SPEC;
      E187 := E187 + 1;
      STM32.GPIO'ELAB_BODY;
      E182 := E182 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E166 := E166 + 1;
      STM32.I2C'ELAB_BODY;
      E202 := E202 + 1;
      STM32.I2C.DMA'ELAB_BODY;
      E207 := E207 + 1;
      STM32.USARTS'ELAB_BODY;
      E250 := E250 + 1;
      STM32.LTDC'ELAB_BODY;
      E288 := E288 + 1;
      Framebuffer_Ltdc'Elab_Spec;
      Framebuffer_Ltdc'Elab_Body;
      E270 := E270 + 1;
      STMPE811'ELAB_SPEC;
      STMPE811'ELAB_BODY;
      E268 := E268 + 1;
      Framebuffer_Ili9341'Elab_Spec;
      Touch_Panel_Stmpe811'Elab_Spec;
      STM32.BOARD'ELAB_SPEC;
      STM32.BOARD'ELAB_BODY;
      E164 := E164 + 1;
      Framebuffer_Ili9341'Elab_Body;
      E160 := E160 + 1;
      Touch_Panel_Stmpe811'Elab_Body;
      E262 := E262 + 1;
      Screen_Draw'Elab_Body;
      E150 := E150 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_ultrasonic");

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
   --   /Users/karamoko/ultrasonic/obj/development/screen_draw.o
   --   /Users/karamoko/ultrasonic/obj/development/ultrasonic.o
   --   -L/Users/karamoko/ultrasonic/obj/development/
   --   -L/Users/karamoko/ultrasonic/obj/development/
   --   -L/Users/karamoko/.local/share/alire/builds/stm32_gui_0.1.0_e2e5c9d4/3ee674d2b93dc9506389e115fb01936ceddd850a63beae621d8cf36a7eb596b0/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/adl_middleware_0.2.0_623c6913/fbb7e94a149915209229876b35886a02bfa51ec2fd7a9c0aaa119f6c0390c238/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/hal_0.3.0_095ae514/45a7230b1521a74e4d762c42ec802710efe319e84e7227b385f535fafd1bbbac/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/stm32_hal_0.1.0_9276ee80/fe5bdb04320c4dd2e59b097788cf1b581555a593cfaa0689c0c31d2e4b7bbbfe/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/cortex_m_0.5.0_39667d15/f454f4f06c95bd1d015688e883ae989ddf29833f0c0d0a3a5bb3d2d58fd06244/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/stm32f429disco_0.1.0_aa5fe0cb/889ab963feec0991851c3be89f19344fb5b82b13dbe59edcaca23d6420e4ffef/lib/
   --   -L/Users/karamoko/.local/share/alire/builds/embedded_components_0.2.0_37c39b23/e57a61e5227db4e924f74ca5fd028592cc309243acfdcdbc26dae612ca86268f/lib/
   --   -L/users/karamoko/.local/share/alire/toolchains/gnat_arm_elf_12.2.1_f4bfd822/arm-eabi/lib/gnat/embedded-stm32f429disco/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
