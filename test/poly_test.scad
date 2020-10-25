
//
// test_poly.scad
//
// Sun Oct 25 07:07:21 JST 2020
//

use <../src/cadence.scad>;


$fn = 60;

l = 50;
d = 6;
l2 = l / 2;
l4 = l / 4;
d1 = d / 2;

ps = [
  [ 0, 0 ], [ l4, d * -0.1 ], [ l4, d * 0.5 ], [ l4, d * 1.1 ], [ l2, d ] ];
polypoints(ps) {
  color("red", 0.7) sphere(r=1.1);
  color("blue", 0.7) sphere(r=0.5); }

ps1 =
  _bezier_points(ps, 10);
//polyhulls(ps1) {
//  sphere(r=0.2);
//  sphere(r=0.7); }

translate([ 20, 20, 0 ]) {
  d = [ 0, 1, 0 ];
  ps2 = [ for (p = ps1) p + d ];
  ps3 = concat(ps1, _reverse(ps2));
  linear_extrude(height=20) polygon(ps3);
  mirror([ 1, 0, 0 ]) linear_extrude(height=20) polygon(ps3);
}

