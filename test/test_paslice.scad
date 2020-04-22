
// test_paslice.scad

use <../src/cadence.scad>;

d = 105;
slices = [ 20, 40, 90 + 20, 90 + 40 ];

for (i = [ 0 : len(slices) - 1]) {
  translate([ i * d, 0, 0 ]) paslice(50, 20, radius1=40, slice=slices[i]);
}

