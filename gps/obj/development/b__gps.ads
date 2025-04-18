pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is


   GNAT_Version : constant String :=
                    "GNAT Version: 12.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_gps" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure main;
   pragma Export (C, main, "main");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  ada.strings%s
   --  gnat%s
   --  interfaces.stm32%s
   --  interfaces.stm32.pwr%s
   --  system.bb%s
   --  system.bb.board_parameters%s
   --  system.bb.cpu_specific%s
   --  system.bb.mcu_parameters%s
   --  system.bb.mcu_parameters%b
   --  system.exceptions%s
   --  system.img_int%s
   --  system.machine_code%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.semihosting%s
   --  system.semihosting%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  gnat.debug_utilities%s
   --  gnat.debug_utilities%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.text_io%s
   --  system.text_io%b
   --  system.io%s
   --  system.io%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  interfaces.stm32.rcc%s
   --  system.img_uns%s
   --  system.img_util%s
   --  system.img_util%b
   --  system.img_decimal_32%s
   --  system.stm32%s
   --  system.bb.parameters%s
   --  system.stm32%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exn_int%s
   --  system.traceback%s
   --  system.traceback%b
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  ada.tags%s
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  system.bb.cpu_primitives%s
   --  system.bb.cpu_primitives.context_switch_trigger%s
   --  system.bb.cpu_primitives.context_switch_trigger%b
   --  system.bb.interrupts%s
   --  system.bb.protection%s
   --  system.multiprocessors%s
   --  system.bb.time%s
   --  system.bb.board_support%s
   --  system.bb.board_support%b
   --  system.bb.threads%s
   --  system.bb.threads.queues%s
   --  system.bb.threads.queues%b
   --  system.multiprocessors.spin_locks%s
   --  system.multiprocessors.spin_locks%b
   --  system.multiprocessors.fair_locks%s
   --  system.os_interface%s
   --  system.put_images%s
   --  system.put_images%b
   --  system.bb.timing_events%s
   --  system.bb.timing_events%b
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  ada.strings.utf_encoding%b
   --  ada.tags%b
   --  system.bb.cpu_primitives%b
   --  system.bb.interrupts%b
   --  system.bb.protection%b
   --  system.bb.threads%b
   --  system.bb.time%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.memory%s
   --  system.memory%b
   --  system.multiprocessors%b
   --  system.multiprocessors.fair_locks%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.task_primitives.operations%b
   --  system.tasking%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.arith_32%s
   --  system.arith_32%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  system.val_decimal_32%s
   --  system.val_enum_8%s
   --  system.val_int%s
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.protected_objects.multiprocessors%s
   --  system.tasking.protected_objects.multiprocessors%b
   --  system.tasking.protected_objects.single_entry%s
   --  system.tasking.protected_objects.single_entry%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.restricted%s
   --  system.tasking.restricted.stages%s
   --  system.tasking.restricted.stages%b
   --  ada.task_identification%s
   --  ada.task_identification%b
   --  ada.synchronous_task_control%s
   --  ada.synchronous_task_control%b
   --  system.interrupts%s
   --  system.interrupts%b
   --  ada.interrupts%s
   --  ada.interrupts%b
   --  ada.interrupts.names%s
   --  cortex_m%s
   --  cortex_m_svd%s
   --  hal%s
   --  cortex_m_svd.scb%s
   --  hal.audio%s
   --  hal.bitmap%s
   --  hal.framebuffer%s
   --  hal.gpio%s
   --  hal.i2c%s
   --  hal.real_time_clock%s
   --  hal.spi%s
   --  hal.time%s
   --  hal.touch_panel%s
   --  hal.uart%s
   --  stm32%s
   --  stm32_svd%s
   --  stm32_svd.adc%s
   --  stm32_svd.crc%s
   --  stm32_svd.dac%s
   --  stm32_svd.dma%s
   --  stm32_svd.dma2d%s
   --  stm32_svd.exti%s
   --  stm32_svd.fsmc%s
   --  stm32_svd.gpio%s
   --  stm32_svd.i2c%s
   --  stm32_svd.ltdc%s
   --  stm32_svd.pwr%s
   --  stm32_svd.rcc%s
   --  stm32_svd.rtc%s
   --  stm32_svd.sdio%s
   --  stm32_svd.spi%s
   --  stm32_svd.syscfg%s
   --  stm32_svd.usart%s
   --  bitmap_color_conversion%s
   --  bitmap_color_conversion%b
   --  bmp_fonts%s
   --  bmp_fonts%b
   --  bno055_i2c_io%s
   --  bno055_i2c_io%b
   --  bosch_bno055%s
   --  bosch_bno055%b
   --  cortex_m.cache%s
   --  cortex_m.cache%b
   --  delay_milliseconds%s
   --  delay_milliseconds%b
   --  bno055_i2c%s
   --  bno055_i2c%b
   --  hershey_fonts%s
   --  hershey_fonts%b
   --  bitmapped_drawing%s
   --  bitmapped_drawing%b
   --  ili9341_regs%s
   --  ili9341%s
   --  ili9341%b
   --  l3gd20%s
   --  l3gd20%b
   --  ravenscar_time%s
   --  ravenscar_time%b
   --  soft_drawing_bitmap%s
   --  soft_drawing_bitmap%b
   --  memory_mapped_bitmap%s
   --  memory_mapped_bitmap%b
   --  stm32.adc%s
   --  stm32.adc%b
   --  stm32.crc%s
   --  stm32.crc%b
   --  stm32.dac%s
   --  stm32.dac%b
   --  stm32.dma%s
   --  stm32.dma%b
   --  stm32.dma.interrupts%s
   --  stm32.dma.interrupts%b
   --  stm32.dma2d%s
   --  stm32.dma2d%b
   --  stm32.dma2d.interrupt%s
   --  stm32.dma2d.interrupt%b
   --  stm32.dma2d.polling%s
   --  stm32.dma2d.polling%b
   --  stm32.dma2d_bitmap%s
   --  stm32.dma2d_bitmap%b
   --  stm32.exti%s
   --  stm32.exti%b
   --  stm32.fmc%s
   --  stm32.fmc%b
   --  stm32.i2s%s
   --  stm32.i2s%b
   --  stm32.power_control%s
   --  stm32.power_control%b
   --  stm32.rtc%s
   --  stm32.rtc%b
   --  stm32.sdram%s
   --  stm32.sdram%b
   --  stm32.spi%s
   --  stm32.spi%b
   --  stm32.spi.dma%s
   --  stm32.spi.dma%b
   --  stm32.timers%s
   --  stm32.timers%b
   --  stm32.gpio%s
   --  stm32.i2c%s
   --  stm32.i2c.dma%s
   --  stm32.rcc%s
   --  stm32.syscfg%s
   --  stm32.syscfg%b
   --  stm32.gpio%b
   --  stm32.usarts%s
   --  stm32.device%s
   --  stm32.device%b
   --  stm32.i2c%b
   --  stm32.i2c.dma%b
   --  stm32.rcc%b
   --  stm32.usarts%b
   --  serial_io%s
   --  serial_io%b
   --  message_buffers%s
   --  message_buffers%b
   --  serial_io.blocking%s
   --  serial_io.blocking%b
   --  peripherals%s
   --  stm32.ltdc%s
   --  stm32.ltdc%b
   --  framebuffer_ltdc%s
   --  framebuffer_ltdc%b
   --  stmpe811%s
   --  stmpe811%b
   --  framebuffer_ili9341%s
   --  touch_panel_stmpe811%s
   --  stm32.board%s
   --  stm32.board%b
   --  framebuffer_ili9341%b
   --  touch_panel_stmpe811%b
   --  last_chance_handler%s
   --  last_chance_handler%b
   --  screen_draw%s
   --  screen_draw%b
   --  gps%b
   --  END ELABORATION ORDER

end ada_main;
