# Code Audit

This is a static cleanup audit of the original `D:\class` folder.

## What Was Done

- Created a clean repository at `D:\class\computational-physics-sem3`.
- Grouped source files by topic/chapter.
- Preserved root-level coursework sources as the canonical copies.
- Moved duplicates, backups, empty files, and visibly broken fragments out of the main source tree.
- Added build helpers for PowerShell and Unix-like `make`.
- Added `.gitignore` rules for generated data, plots, binaries, and editor backups.

## Duplicate/Redundant Files

- `first.c` duplicates `ch1q1.c`.
- `trych2q3.c` duplicates `ch2q3.c`.
- `ch2q1a.c` duplicates `ch2q1.c`; `ch2q1.c` was kept in the main tree.
- `ch3q3again.c` duplicates `ch3q3.c`; the copy is in `legacy/known-issues/`.
- `ch4q3again.c` is a near-duplicate of `ch4q3.c`; the copy is in `legacy/known-issues/`.
- Nested `Documents/` and `Documents/cods/` copies repeat many of the same root-level files.

## Known Issues To Review

- `legacy/known-issues/ch6q4.c`: contains syntax/name errors (`x` vs parameter name, missing multiplication operator, malformed initialization) and was not included in main builds.
- `legacy/known-issues/pop.c`: empty `main`; not meaningful as coursework.
- `src/chapter-01-c-basics/ch1q8.c`: quadratic formula uses `-b^2` instead of `-b`; review before presenting as a corrected solver.
- `src/chapter-01-c-basics/ch1q5.c`: Fibonacci update logic looks nonstandard and may skip expected values.
- `src/practice-and-projects/pendulum.c`: variable `n` is used before initialization when computing a term outside the loop.
- `src/chapter-03-series-methods/ch3q5.c`: local variable `k` is read before assignment in the first term calculation.
- `src/chapter-06-numerical-integration/ch6q1.c`: integrand evaluates `atan(x)/x^2`; the lower bound includes `x = 0`, which needs analytical handling.
- Several programs are interactive or write files into the current directory; run them from a scratch folder if you want a clean working tree.

## Verification Status

No full compile validation was possible in the current shell because GCC/MinGW and gnuplot were not available. The repository includes `scripts/build_all.ps1` and `Makefile` so it can be validated after installing a compiler.

Recommended next check:

```powershell
cd D:\class\computational-physics-sem3
.\scripts\build_all.ps1
```

Then fix any compiler warnings or failures file by file.
