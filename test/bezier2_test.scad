
//
// bezier2_test.scad
//
// Sun Apr 25 11:54:21 JST 2021
//

use <../src/cadence.scad>;


$fn = 12;


path = [
  [ [ 0, 0, 0 ], [ 0, 10, 0 ], [ 10, 10, 0 ] ],
  [ [ 10, 10, 0 ], [ 20, 10, 0 ], [ 20, 0, 0 ] ],
  [ [ 20, 0, 0 ], [ 20, -10, 0 ], [ 10, -10, 0 ] ],
  [ [ 10, -10, 0 ], [ 0, -10, 0.5 ], [ 0, 0, 1 ] ]
];

for (ps = path) {
  ps1 = _bezier_points(ps, 6);
  polyhulls(ps1) {
    color("blue") sphere(d=1.0);
  }
}

