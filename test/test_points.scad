
//
// test_points.scad
//
// Fri Sep 18 08:45:08 JST 2020
//

use <../src/cadence.scad>;

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


//p3 = _midpoint([ 0, 0, 0 ], [ 4, 4, 4 ]);
//echo([ "p3", p3 ]);
//
////function _to_point(length, angles, sp=[ 0, 0, 0 ]) =
//p4 = _to_point(4, [ 45, 20 ], [ 0, 0, 0 ]);
//
//translate([ 0, 0, 0 ]) sphere(d=0.5);
//translate(p4) sphere(d=0.5);
//
//p5 = _midpoint([ 0, 0, 0 ], p4, 0.5);
//color("red") translate(p5) sphere(d=0.5);


module test_midpoint(p0, p1, r=0.5) {

  translate(p0) sphere(d=0.5);
  translate(p1) sphere(d=0.5);

  color("red") translate(_midpoint(p0, p1, r)) sphere(d=0.4);

  color("blue") hull() {
    translate(p0) sphere(d=0.2);
    translate(p1) sphere(d=0.2);
  }
}

test_midpoint([ 0, 0, 0 ], [ 4, 4, 4 ]);
test_midpoint([ -1.85625, 0, 0 ], [ -1.85625, 1.4326, -8.12466 ], 0.2);
test_midpoint([ -1.85625, 0, 0 ], [ -1.85625, 1.4326, 8.12466 ], 0.7);
test_midpoint([ 1.85625, 0, 0 ], [ 1.85625, -1.4326, 8.12466 ], 0.7);

