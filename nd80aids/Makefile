all : nd80aids.bin n8aidsbc.bin nd80aids.com

nd80aids.com : zout/aidscom.rel
	ld80 -o nd80aids.com -O bin zout/aidscom.rel

nd80aids.bin : patched.bin msxbios.bin
	cat patched.bin msxbios.bin > nd80aids.bin

n8aidsbc.bin : patchbc.bin msxbibc.bin
	cat patchbc.bin msxbibc.bin > n8aidsbc.bin

msxbios.bin : zout/msxbios.rel
	ld80 -o msxbios.bin -O bin zout/msxbios.rel

msxbibc.bin : zout/msxbibc.rel
	ld80 -o msxbibc.bin -O bin zout/msxbibc.rel

zout/msxbios.rel : msxbios.mac
	zmac --rel msxbios.mac

zout/msxbibc.rel : msxbibc.mac
	zmac --rel msxbibc.mac

zout/aidscom.rel : aidscom.mac n8aidsbc.bin
	zmac --rel aidscom.mac

clean :
	rm -rf zout
