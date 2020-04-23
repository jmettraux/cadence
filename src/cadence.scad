
// sublist
//
function _sl(list, from=0, to) =
  let(end = (to == undef ? len(list) - 1 : to))
  [ for ( i = [from:end]) list[i] ];

// pineapple slice
//
module paslice(radius, depth, slice=45, center=false, radius1=0) {

  assert(slice >= 0, "slice must be >= 0 degrees");
  assert(slice <= 360, "slice must be <= 360 degrees");

  r = radius;

  if (slice > 0) difference() {

    cylinder(depth, r=radius, center=center);

    translate([ 0, 0, -0.1 ])
      cylinder(depth * 1.1, r=radius1, center=center);

    if (slice != 360) {

      pas = [
        [ 0, r ], [ 0, 0 ] ];
      pbs = [
        [ r, r ], [ r, 0 ], [ r, -r ], [ 0, -r ], [ -r, -r ], [ -r, 0 ],
        [ -r, r ] ];

      t = tan(slice);
      tx = t * r;
      ty = r / t;

      translate([ 0, 0, -0.1 ]) linear_extrude(depth + 0.2)
        if (slice <= 45) {
          polygon(concat(pas, [ [ tx, r ] ], pbs));
        }
        else if (slice <= 135) {
          polygon(concat(pas, [ [ r, ty ] ], _sl(pbs, 2)));
        }
        else if (slice <= 225) {
          polygon(concat(pas, [ [ -tx, -r ] ], _sl(pbs, 4)));
        }
        else if (slice <= 315) {
          polygon(concat(pas, [ [ -r, -ty ] ], _sl(pbs, 6)));
        }
        else if (slice < 360) {
          polygon(concat(pas, [ [ tx, r ] ]));
        }
    }
  }
}

