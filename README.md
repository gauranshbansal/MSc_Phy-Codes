# MSc Computational Physics & Laboratory Coursework

Welcome to the MSc Physics (Semester 3) computational physics and laboratory coursework repository! This archive contains C source code, numerical analysis implementations, Gnuplot scripts, 8051 microcontroller assembly programs, and embedded project files.

---

## 🌟 Philosophy & How to Approach this Repository

> *"Programming is like cycling or swimming — no amount of reading can teach you how to cycle or swim. The only way to learn is by actually writing code, making mistakes, falling down initially, and learning how to debug."*  
> — **Prof. Shobhit Mahajan** (*Computer Programming & Numerical Analysis Lab Manual*)

Learning computational physics is an active process. Don't be afraid if a program throws compiler errors or gives unexpected outputs initially — debugging is where real understanding happens.

This repository is structured so you can:
1. **Study the Algorithms**: Read through cleaned, well-commented C source files organized by numerical topic.
2. **Compile and Run**: Experiment with inputs, step sizes, and initial conditions.
3. **Visualize Results**: Plot generated dataset files using Gnuplot to observe convergence, trajectories, and physical behavior.

---

## 📂 Repository Architecture & Modules

The repository is organized into three distinct laboratory modules:

| Module / Directory | Description | Primary Technologies |
| :--- | :--- | :--- |
| 📁 [`computational-physics-c/`](file:///D:/class/computational-physics-sem3/computational-physics-c) | Core MSc C programming & numerical analysis lab coursework | C11, GCC, Gnuplot |
| 📁 [`microcontroller-8051/`](file:///D:/class/computational-physics-sem3/microcontroller-8051) | 8051 Microcontroller assembly lab experiments & simulations | 8051 Assembly, Keil uVision |
| 📁 [`transmission-line-fault-detection/`](file:///D:/class/computational-physics-sem3/transmission-line-fault-detection) | Embedded system project for monitoring & fault detection on transmission lines | C++ / Arduino |

---

## 📘 C Module Syllabus & Chapter Roadmap

Inside [`computational-physics-c/src/`](file:///D:/class/computational-physics-sem3/computational-physics-c/src), C programs are categorized by chapter based on the course lab manual:

```
computational-physics-c/
├── src/
│   ├── chapter-01-c-basics/
│   ├── chapter-02-plotting-special-functions/
│   ├── chapter-03-series-methods/
│   ├── chapter-04-root-finding/
│   ├── chapter-05-differential-equations/
│   ├── chapter-06-numerical-integration/
│   ├── chapter-07-linear-algebra/
│   └── practice-and-projects/
├── plots/
├── include/
├── legacy/
└── docs/
```

### 1. C Basics & Fundamentals (`src/chapter-01-c-basics/`)
- **Topics**: C environment setup, data types (`int`, `float`, `double`, `char`), I/O formatting (`printf`, `scanf`), control flow (`for`, `while`, `do-while`, `switch`), and basic pointers (`&`, `*`).
- **Programs**: Number theory, Fibonacci sequence updates, prime testing up to $\sqrt{N}$, factorials, permutations/combinations ($^nC_r$, $^nP_r$), Harshad numbers, and quadratic equation solver.

### 2. Graphics & Special Functions (`src/chapter-02-plotting-special-functions/`)
- **Topics**: Data file generation (`.dat`, `.txt`) using `fprintf`, Gnuplot integration, periodic functions, and special functions in physics.
- **Programs**: Geometric figures (circles, triangles), Lissajous figures (superposition of perpendicular SHMs), periodic step-functions, hydrogenic orbital probability densities $|\Theta_{lm}(\theta)|^2$, and spherical Bessel recurrence relations $j_n(z)$.

### 3. Finite & Infinite Series (`src/chapter-03-series-methods/`)
- **Topics**: Evaluating series approximations without floating-point overflow, recurrence ratios $R = t_k / t_{k-1}$, partial sums $S_j = S_{j-1} + t_j$, tolerance thresholds, and significant figures rules.
- **Programs**: Exponential $e^x$, trigonometric series ($\sin x$, $\cos x$), Bessel functions $J_n(x)$, and Fresnel/Airy series functions.

### 4. Root Finding (`src/chapter-04-root-finding/`)
- **Topics**: Coarse interval tabulation to locate sign changes, iterative root bracketing, convergence speeds, and algorithm trade-offs.
- **Algorithms**:
  - **Bisection Method**: Slow, but guaranteed to converge.
  - **Secant Method**: Faster; requires two initial points.
  - **Newton-Raphson Method**: Extremely fast; relies on derivative $f'(x)$ (fails near zero derivative/flat slopes).
- **Programs**: Transcendentals ($\sin x - x\cos x = 0$), implicit equations ($x^3 + y^3 + xy + 1 = 0$), Kepler's orbital equation ($\psi - \epsilon \sin \psi - \omega t = 0$), and Chebyshev polynomial roots $U_4(x)$.

### 5. Ordinary Differential Equations (`src/chapter-05-differential-equations/`)
- **Topics**: Initial Value Problems (IVPs), first-order vs. higher-order ODEs, reduction of $N^{\text{th}}$-order ODEs to coupled $1^{\text{st}}$-order ODEs.
- **Algorithms**: Euler's method ($O(h)$ error, rough) vs. $4^{\text{th}}$-Order Runge-Kutta / RK4 ($O(h^4)$ error, highly accurate).
- **Programs**: Simple harmonic oscillator ($y'' + y = 0$), pendulum with non-linear swing ($\theta'' = -\sin\theta$), predator-prey Lotka-Volterra dynamics, Lorenz chaotic system, and logistic map bifurcation diagrams.

### 6. Numerical Integration / Quadrature (`src/chapter-06-numerical-integration/`)
- **Topics**: Definite integrals $\int_a^b f(x) dx$, equal-width vs. unequal-width panel discretization.
- **Algorithms**:
  - **Trapezoidal Rule**: Linear panel approximation ($O(h^2)$ error).
  - **Simpson's Rule**: Quadratic panel approximation ($O(h^4)$ error, requires even number of intervals $n$).
  - **Gauss Quadrature**: High-accuracy unequal-width weights (Gauss-Legendre for $[-1, 1]$, Gauss-Laguerre for $[0, \infty)$, Gauss-Hermite for $(-\infty, \infty)$).
- **Programs**: Integral evaluations ($\int \frac{\arctan x}{x^2} dx$), pendulum period integrals, and central force orbital motion $\theta(R)$.

### 7. Matrices & Linear Algebra (`src/chapter-07-linear-algebra/`)
- **Topics**: 1D/2D arrays, 0-indexed contiguous memory, dynamic memory allocation (`matalloc`, `malloc`/`calloc`), header utilities (`include/gauss.h`).
- **Programs**: Matrix addition, matrix multiplication, trace calculation, and commutator $[A, B] = AB - BA$.

---

## 🚀 Getting Started & Execution Guide

### Prerequisites
- **C Compiler**: GCC (Linux/macOS) or MinGW-w64 / Cygwin GCC (Windows).
- **Build Tool** (Optional): `make` or PowerShell 5.1+.
- **Plotting Tool** (Optional): [Gnuplot](http://www.gnuplot.info/) for executing `.p` script files.

### 1. Compiling & Running a C Program Manually
All C programs use standard headers and the math library.

```bash
# Navigate to the C module folder
cd computational-physics-c

# Compile a program (always include -lm to link the math library!)
gcc -std=gnu11 -Wall -Wextra -Iinclude src/chapter-05-differential-equations/ch5q3.c -lm -o build/bin/ch5q3

# Run the compiled binary
./build/bin/ch5q3   # On Linux/macOS
.\build\bin\ch5q3.exe # On Windows
```

> [!IMPORTANT]
> **The `-lm` Flag**: Whenever a program uses functions from `<math.h>` (like `sin`, `cos`, `sqrt`, `exp`, `pow`), you **must** append `-lm` when compiling on GCC/Linux so the linker connects the math library (`libm`).

### 2. Batch Building All Programs

- **Windows PowerShell**:
  ```powershell
  cd computational-physics-c
  .\scripts\build_all.ps1
  ```

- **Linux / macOS**:
  ```bash
  cd computational-physics-c
  make
  ```

Build outputs are compiled into `build/bin/` (which is kept out of Git via `.gitignore`).

### 3. Visualizing Data with Gnuplot
Many C programs output numerical data tables (`.dat` or `.txt`). Corresponding visualization scripts reside in `plots/`.

```bash
# Run a Gnuplot script from the computational-physics-c directory
gnuplot plots/ch5q3.p
```

**Interactive Gnuplot Quick Commands**:
```gnuplot
gnuplot> set xlabel "Time t"
gnuplot> set ylabel "Position x(t)"
gnuplot> set grid
gnuplot> plot "res1.txt" using 1:2 with linespoints title "Euler", "res2.txt" u 1:2 w lines title "RK4"
```

---

## 💡 Golden Rules & Best Practices from the Lab Manual

> [!TIP]
> Keep these standard C programming guidelines in mind when writing or modifying numerical code:

1. **Avoid Integer Division**: In C, `1 / 2` evaluates to `0`! Always use floating-point numbers (`1.0 / 2.0`) or explicitly cast variables `(float)a / b`.
2. **Parenthesize Macro Definitions**: When defining mathematical functions using `#define`, enclose all variable instances in parentheses to avoid precedence bugs:
   ```c
   #define F(x) ((x)*(x) + sin(x))  /* Safe */
   ```
3. **Always Tabulate Before Root Finding**: Never run Bisection or Newton-Raphson blindly. Tabulate $f(x)$ over a coarse grid first to identify where the function changes sign.
4. **Use Term Ratios for Series**: When evaluating series expansions like $e^x = \sum \frac{x^n}{n!}$, never calculate large factorials directly (e.g. $20!$ overflows integer limits). Calculate the ratio of consecutive terms $R = t_k / t_{k-1}$ instead:
   ```c
   /* For e^x series: t_k = t_{k-1} * (x / k) */
   t *= x / i;
   sum += t;
   ```
5. **Simpson's Rule Constraint**: Simpson's rule requires an **even** number of sub-intervals ($n$). Remember to multiply the sum by $h / 3$.
6. **Zero-Based Array Indexing**: C arrays of size $N$ use indices $0, 1, \dots, N-1$. Accessing index $N$ leads to memory corruption or crashes.

---

## 🛠️ Additional Laboratory Modules

### 1. 8051 Microcontroller Assembly (`microcontroller-8051/`)
Contains assembly code (`.asm`) and Keil uVision project files (`.uvproj`) for 8051 microcontroller hardware simulation:
- **Experiments**: LED blinker circuits, 16-bit arithmetic, NOR gate simulation, digital counters, and traffic light intersection controller (`TRAFFIC1.asm`, `disptraffic.asm`).

### 2. Transmission Line Fault Detection (`transmission-line-fault-detection/`)
Contains embedded C++ code (`final_BESTESTCODE_copy_20260416160306.ino`) for an Arduino-based transmission line monitoring system, analyzing current/voltage deviations to identify line faults.

---

## 📜 Documentation & Reference Files

- [`c-programming-lab-manual.pdf`](file:///D:/class/computational-physics-sem3/computational-physics-c/docs/reference/c-programming-lab-manual.pdf): The original course lab manual by Prof. Shobhit Mahajan.
- [`PROJECT_MAP.md`](file:///D:/class/computational-physics-sem3/computational-physics-c/docs/PROJECT_MAP.md): Detailed map of source code selections and curated files.
- [`CODE_AUDIT.md`](file:///D:/class/computational-physics-sem3/computational-physics-c/docs/CODE_AUDIT.md): Audit notes on file exclusions, backups, and known issues.
- [`LICENSE`](file:///D:/class/computational-physics-sem3/LICENSE): Project license.

---
*Happy Coding & Computing! Keep experimenting and building.* 🚀
