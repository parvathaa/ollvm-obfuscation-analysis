# Sample 02: if/else — Bogus Control Flow vs Control Flow Flattening

## Source
`ifelse.c` — simple if/else with a `volatile` variable to prevent 
compile-time constant folding of the branch.

## Passes compared
- `clean` — no obfuscation
- `obf_bcf` — bogus control flow (-mllvm -bcf)
- `obf_fla` — control flow flattening (-mllvm -fla)

## Findings
- `clean.asm`: straightforward cmp/jle/jge branch structure
- `obf_fla.asm`: branches replaced with a dispatcher loop — a state 
  variable is compared against magic constants (e.g. 0x93d16c38) via 
  sub+je chains, with each match jumping to a different block
- Ghidra's Function Graph view shows this clearly: clean.asm produces 
  a simple diamond-shaped CFG, while obf_fla's graph radiates outward 
  from a single dispatcher block
