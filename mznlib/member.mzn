include "member_bool.mzn";
include "member_int.mzn";

/** @group globals
  Requires that \a y occurs in the array \a x.
*/
predicate member(array[int] of var bool: x, var bool: y);

/** @group globals
  Requires that \a y occurs in the array \a x.
*/
predicate member(array[int] of var int: x, var int: y);


