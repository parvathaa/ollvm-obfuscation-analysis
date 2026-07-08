# Sample 01: Simple Addition — Instruction Substitution (-sub)

## Source
`add.c` — hardcoded a = 5, b = 3, returns a + b.

## Passes compared
- clean — no obfuscation
- obf — instruction substitution (-mllvm -sub)

## Assembly-level findings
Clean version compiles the addition directly:

mov    eax, [rbp-0x4]
add    eax, [rbp-0x8]

Obfuscated version replaces the single add with an equivalent chain:

mov    eax, [rbp-0x4]
mov    edx, [rbp-0x8]
xor    ecx, ecx
sub    ecx, edx
sub    eax, ecx

## LLVM IR-level findings
Generated via:

clang -O0 -S -emit-llvm add.c -o clean.ll
clang -O0 -S -emit-llvm -mllvm -sub add.c -o obf.ll

Clean IR:
%5 = add nsw i32 %3, %4

Obfuscated IR:

%5 = add i32 %3, -1261757961
%6 = add i32 %5, %4
%7 = sub i32 %6, -1261757961
%8 = add nsw i32 %3, %4
ret i32 %7

## Key takeaway
-sub does not apply one fixed rewrite. The asm run showed a
negation-based disguise; the IR run showed a constant-cancellation
disguise. The substitution happens at the IR level before any
x86-specific lowering, and produces different equivalent forms
across compilations.
