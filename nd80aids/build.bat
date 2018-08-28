zmac --rel msxbios.mac
ld80 -o msxbios.bin -O bin zout\msxbios.rel
zmac --rel msxbibc.mac
ld80 -o msxbibc.bin -O bin zout\msxbibc.rel
copy /b /y patched.bin+msxbios.bin nd80aids.bin
copy /b /y patchbc.bin+msxbibc.bin n8aidsbc.bin
zmac --rel aidscom.mac
ld80 -o nd80aids.com -O bin zout\aidscom.rel
pause
