-Start the environment:
docker run --rm -it icyguider/ollvm bash

-Create source code:
cat > add.c
*type code* Ctrl+D

-Compile:
normal version: clang -O0 add.c -o clean
obfuscated version: clang -O0 add.c -mllvm -sub -o obf

-Run both binaries:
./clean
./obf

-Compare the machine code:
objdump -Mintel -d clean > clean.asm
objdump -Mintel -d obf > obf.asm

-FOcus on add functions:
grep -A20 "<add>" clean.asm
grep -A20 "<add>" obf.asm

