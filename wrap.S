		.globl  app_start
app_start:
		.incbin "app.bin"
		.globl  app_end
app_end:
		.align  2

		.section .start,#alloc,#execinstr
		.type   _start, #function
		.globl  _start
_start:		bl	app_start+0x400
