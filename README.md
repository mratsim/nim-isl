# ISL - Integer Set Library

## Library

ISL is a library for manipulating sets and relations of integer points bounded by affine constraints.
Supported operations on sets include intersection, union, set difference, emptiness check, convex hull, (integer affine hull, integer projection, computing the lexicographic minimum using parametric integer programming, coalescing and parametric vertex enumeration. It also includes an ILP solver based on generalized basis reduction, transitive closures on maps (which may encode infinite graphs), dependence analysis and bounds on piecewise step-polynomials.

Original project:
  - http://isl.gforge.inria.fr
  - https://repo.or.cz/w/isl.git

ISL is the backend of most modern polyhedral compilers include GCC Graphite and LLVM Polly. The polyhedral compilation models loop constraints (iterator intervals and data access) as an integer linear programming problem to optimize. This helps rescheduling instructions
  in different orders without breaking their dependencies.

ISL is based on [Presburger arithmetic](https://en.wikipedia.org/wiki/Presburger_arithmetic), i.e.
natural number arithmetic with addition and equality and no multiplication.

## Intended audience warning

⚠: Usage of this wrapper is intended for development and exploratory purpose
    of the underlying ISL library,
    Hence I am purposely not submitting as a nimble package.
    I however accept PRs that would allow proper wrapping of the library for use
    as a nimble package.

# Future plans

For optimizing the [Arraymancer](https://github.com/mratsim/Arraymancer), I am overhauling
the tensor backend in [Laser](https://github.com/numforge/laser).

Implementing optimized linear algebra, including vector, matrix and tensor operations is all about
optimizing your loops over your dimensions for locality, vectorization, parallelism.

The polyhedral framework provides a theoretical framework to apply loop transformations
like loop reversal, skewing/shifting/peeling, interchange, fusion, distribution, and tiling
while preserving data dependencies and end result.

As I am [exploring a domain specific language for tensor operations](https://github.com/mratsim/compute-graph-optim)
as sparked by [this Arraymancer issue](https://github.com/mratsim/Arraymancer/issues/347), I feel like
the polyhedral representation is very promising.

However, due to Nim C FFI during compilation at the moment, it is impossible
to use ISL in macro, so I will probably reimplement core ISL functionality
in pure Nim.

The alternative would be to create a Nim compiler plugin with a custom pass for
polyhedral code generation, but AFAIK that would require projects to compile a custom augmented Nim compiler
and then compile their own project with several tradeoffs as well (build script, libisl in path, compiler plugins are undocumented and seldom tested besides LLVM)

## License

The wrapper is licensed MIT like the original project.
Note that, the original project depends on either imath (MIT) or GMP (LGPL) for bigints.