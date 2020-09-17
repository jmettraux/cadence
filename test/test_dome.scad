
//
// test_dome.scad
//
// 20200614 1222
//

use <../src/cadence.scad>;

translate([ 0, 0, 0 ]) dome(5);
translate([ 7, 0, 0 ]) dome(4);
translate([ 9, 9, 0 ]) dome(4, trunk_height=3);

