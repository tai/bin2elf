
SRCS = $(wildcard *.S)
OBJS = $(SRCS:.S=.o)

CROSS_COMPILE := arm-none-linux-gnueabi-

LDFLAGS = -p --no-undefined -X -T wrap.lds

CC = $(CROSS_COMPILE)gcc -march=armv5te
AS = $(CROSS_COMPILE)gcc -march=armv5te
LD = $(CROSS_COMPILE)ld
OBJCOPY = $(CROSS_COMPILE)objcopy
OBJDUMP = $(CROSS_COMPILE)objdump

all: wrap.dis

wrap.dis: wrap.elf
	$(OBJDUMP) -D $< > $@

wrap.elf: $(OBJS) wrap.lds
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

dis.c: wrap.elf
	time /d/src/snowman/build/nocode/nocode $< > dis.c

clean:
	$(RM) *.elf *.o *.old *.bak *~

