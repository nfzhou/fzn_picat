%-----------------------------------------------------------------------------%
% A table constraint: table(x, t) represents the constraint x in t where we
% consider each row in t to be a tuple and t as a set of tuples.
%-----------------------------------------------------------------------------%

predicate picat_table_bool(array[int] of var bool: x, array[int] of bool: t);

predicate fzn_table_bool(array[int] of var bool: x, array[int, int] of bool: t) =
  picat_table_bool(x, array1d(t))
