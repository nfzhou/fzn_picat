/** @group globals.channeling
  Constrains two arrays of int variables, \a f and \a invf, to represent
  inverse functions.  All the values in each array must be within the index
  set of the other array.
*/
predicate picat_inverse(array[int] of var int: f,
                  array[int] of var int: invf);

predicate fzn_inverse(array[int] of var int: f,
                      array[int] of var int: invf) =
  picat_inverse(f, invf);
