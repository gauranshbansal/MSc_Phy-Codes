# Project Map

This map summarizes the curated repository created from the original `D:\class` working folder.

## Main Source Selection

The main `src/` tree keeps the latest root-level coursework files and avoids nested duplicate copies from `Documents/` and `Documents/cods/`.

- Chapter 1: `ch1q1.c` through `ch1q8.c`
- Chapter 2: geometric data, Lissajous figures, periodic/special functions, and spherical Bessel data generation
- Chapter 3: series approximations and special-function calculations
- Chapter 4: nonlinear equations, roots, implicit curves, and orbital calculations
- Chapter 5: ODE solvers and dynamical systems
- Chapter 6: quadrature/integration exercises using trapezoid and Gauss-Legendre methods
- Chapter 7: matrix allocation and addition
- Practice/projects: miscellaneous exam practice, projectile motion, pendulum, and later numerical exercises

## Excluded From Main Tree

The following were not copied into the main source tree:

- `Documents/` and `Documents/cods/`: mostly duplicate snapshots of root-level files.
- `*.dat`, `*.txt`, `*.eps`, `*.pdf`: generated data/plot/course-note outputs. These are ignored by `.gitignore`.
- `a.exe`, `a.out`, `ok.out`: compiled binaries.
- `#...#` and `*.c~`: editor backup files.
- `stdlib.h`: local copy of a system header. Publishing it next to sources would risk shadowing the real standard header.
- `comp_notes.pdf`: likely course/reference material rather than original source code.

## Legacy Area

`legacy/reference-fragments/` keeps old numerical-table fragments (`hermite.c`, `laguer.c`, `laguerre.c`, `makemat.c`) because they may be useful context but are not standalone modern source files.

`legacy/known-issues/` keeps files that are duplicates, empty, or visibly broken. See `CODE_AUDIT.md`.
