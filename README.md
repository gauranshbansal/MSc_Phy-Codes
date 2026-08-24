# MSc Computational Physics Coursework

C programs, plotting scripts, and small numerical experiments from MSc Physics, Computational Physics, Semester 3.

The repository is organized as a cleaned coursework archive: source files are grouped by topic/chapter, generated outputs are ignored, and rough or duplicate files from the original working folder are separated into `legacy/` instead of being presented as finished work.

## Contents

| Folder | Contents |
| --- | --- |
| `src/chapter-01-c-basics/` | C fundamentals, tables, number theory, factorials, permutations/combinations, quadratic roots |
| `src/chapter-02-plotting-special-functions/` | Data generation for geometric plots, Lissajous figures, angular functions, spherical Bessel recursion |
| `src/chapter-03-series-methods/` | Series approximations for cosine, Bessel functions, Fresnel/Airy-style functions |
| `src/chapter-04-root-finding/` | Bisection, secant, Newton-Raphson, implicit curves, orbital equations |
| `src/chapter-05-differential-equations/` | Euler/RK4 methods, pendulum, predator-prey, Lorenz system, logistic equation |
| `src/chapter-06-numerical-integration/` | Trapezoidal/Simpson/Gauss-Legendre integration and Bessel integral forms |
| `src/chapter-07-linear-algebra/` | Dynamic matrix allocation and matrix addition |
| `src/practice-and-projects/` | Exam/practice snippets and self-directed projectile/pendulum/Fourier-style exercises |
| `plots/` | Gnuplot scripts used to visualize generated data |
| `include/` | Shared numerical helper headers |
| `legacy/` | Reference fragments, backups, and files with known issues |
| `docs/` | Project map and audit notes |

## Requirements

- C compiler: GCC, MinGW-w64 GCC, or Clang
- Optional: `make`
- Optional: `gnuplot` for `.p` plotting scripts

The source code uses the C math library. On Linux/macOS, compile with `-lm`. The supplied scripts already do this.

## Build

Windows PowerShell:

```powershell
.\scripts\build_all.ps1
```

Linux/macOS:

```bash
make
```

Build products are written to `build/bin/`, which is ignored by Git.

## Running Individual Programs

Most files are standalone C programs. Example:

```bash
gcc -std=gnu11 -Wall -Wextra -Iinclude src/chapter-05-differential-equations/ch5q3.c -lm -o build/bin/ch5q3
./build/bin/ch5q3
```

Many programs write `.dat` or `.txt` data files in the current working directory. Run them from a scratch/output directory if you want to keep the source tree clean.

## Plotting

Several programs generate data files that are consumed by scripts in `plots/`.

```bash
gnuplot plots/ch5q3.p
```

The original `.dat`, `.txt`, `.eps`, `.pdf`, executables, and editor backup files were treated as generated or archival outputs and are not part of the main curated source tree.

## Notes

This is an educational archive, not a polished numerical library. Some programs are intentionally close to the classroom versions, including rough edges and interactive prompts. See `docs/CODE_AUDIT.md` for known duplicates, exclusions, and files that should be reviewed before presenting as finished numerical work.
