
//
// test_points.scad
//
// Fri Sep 18 08:45:08 JST 2020
//

use <../src/cadence.scad>;

//echo(_midpoint([ 0, 0, 0 ], [ 4, 2, 0 ]));
p2 = _midpoint([ 0, 0, 0 ], [ 4, 2, 0 ]);
//echo(p2);

//assert(
//  _midpoint([ 0, 0, 0 ], [ 4, 2, 0 ]) == [ 2, 1, 0 ],
//  "_midpoint NG");

assert(p2.x == 2);
assert(round(p2.y) == 1);
assert(p2.z == 0);
  //
  // :-(

