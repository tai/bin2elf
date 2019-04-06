# bin2elf

Add ELF header to pure binary.

## Usage

$ cp /path/to/your/binary.bin app.bin
$ make

## Description

Some binary analysis tool only works with a binary that has an ELF header.
This is a problem when dealing with pure binary, such as a firmware image.
This project adds random ELF header by compiling new ELF binary with random pure binary embedded.

