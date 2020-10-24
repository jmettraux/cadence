
//
// test_paslice.scad
//
// 20200421 0725
//

use <../src/cadence.scad>;

d = 110;
s = 6;

slices = [
  21, 45, 61, 90, 101, 135, 151, 180,
  201, 225, 251, 270, 281, 315, 331, 360, 0,
  0, 0, -15, 390 ];

for (i = [ 0 : len(slices) - 1 ]) {
  x = (i % s) * d;
  y = - (floor(i / s) * d);
  translate([ x, y, 0 ])
    paslice(50, 20, radius1=40, slice=slices[i]);
  translate([ x - d / 2.1, y - d / 1.8, 0 ])
    text(str(slices[i]), size=10, font="Courier New");
}

