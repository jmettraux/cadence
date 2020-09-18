
//
// test_dict.scad
//
// Fri Sep 18 08:44:46 JST 2020
//

use <../src/cadence.scad>;

di = [ [ "a", 0 ], [ "b", 1 ], [ "c", 2 ] ];

assert(
  _get(di, "b") == 1,
  "_get NG");
assert(
  _get(di, "z") == undef,
  "_get NG");

assert(
  _get(di, "z", 1) == 1,
  "_get NG");
assert(
  _get(di, "z", undef) == undef,
  "_get NG");

assert(
  _del(di, "c") == [ [ "a", 0 ], [ "b", 1 ] ],
  "_del NG");
assert(
  _del(di, "z") == [ [ "a", 0 ], [ "b", 1 ], [ "c", 2 ] ],
  "_del NG");

assert(
  _put(di, "d", 3) == [ [ "a", 0 ], [ "b", 1 ], [ "c", 2 ], [ "d", 3 ] ],
  "_put NG");
assert(
  _put(di, "a", 3) == [ [ "b", 1 ], [ "c", 2 ], [ "a", 3 ] ],
  "_put NG");

