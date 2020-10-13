A minimal FlatZinc interpreter in Picat that just meets the 
requirements for MiniZinc Challenge. 

    by Neng-Fa Zhou and Hakan Kjellerstrand, June 2020.

The globals supported by the interpreter are available here:

    http://picat-lang.org/flatzinc/picat_globals.tar.gz
	
The following examples illustrate the two different ways to use
the interpreter to solve "zebra.fzn":

    1. load and run

       Picat> load(fzn_picat_sat).
       Picat> main(["zebra"]).

    2. run as a command-line

       picat fzn_picat_sat zebra
