OUTPUT_ARCH(arm)
ENTRY(_start)
SECTIONS
{
  . = 0;
  .text : {
   _stext = .;
   *(.text)
   *(.start)
   _etext = .;
  }

  .stab 0 : { *(.stab) }
  .stabstr 0 : { *(.stabstr) }
  .stab.excl 0 : { *(.stab.excl) }
  .stab.exclstr 0 : { *(.stab.exclstr) }
  .stab.index 0 : { *(.stab.index) }
  .stab.indexstr 0 : { *(.stab.indexstr) }
  .comment 0 : { *(.comment) }
}
