A minimal FlatZinc interpreter in Picat that just meets the 
requirements for MiniZinc Challenge. 

    by Neng-Fa Zhou and Hakan Kjellerstrand, June 2020.

The MiniZinc library located in `mznlib/` can be used to compile FlatZinc
models compatible with this interpreter. You can compile these models directly
by including the `mznlib/` folder in your compilation command:
```
minizinc --solver mzn-fzn -I $PWD/mznlib zebra.mzn
```

Another option is to instantiate the `picat.msc.in` file (as `picat.msc`) by
replacing the correct locations for the executable and the MiniZinc library.
You can then use the `picat.msc` file as your solver:
```
minizinc --solver picat.msc zebra.mzn
```
Or include the folder that contains `picat.msc` on your `MZN_SOLVER_PATH` and
use the identifier:
```
minizinc --solver picat zebra.mzn
```
	
The following examples illustrate the two different ways to use
the interpreter to solve "zebra.fzn":

    1. load and run

       Picat> load(fzn_picat_sat).
       Picat> main(["zebra"]).

    2. run as a command-line

       picat fzn_picat_sat zebra
