
//
// test_bezier.scad
//
// Sat Oct 24 15:34:32 JST 2020
//

use <../src/cadence.scad>;


$fn=60;

p0 = [ 1, 1 ];
p1 = [ 25, -3 ];
p2 = [ 20, 7 ];
echo(_bezier_points([ p0, p1, p2 ], 5));

translate(p0) color("blue", 0.6) sphere(r=0.3);
translate(p1) color("blue", 0.6) sphere(r=0.3);
translate(p2) color("blue", 0.6) sphere(r=0.3);

points = _bezier_points([ p0, p1, p2 ], 20);

for (p = points) {
  translate(p) color("red", 0.6) sphere(r=0.2);
}

