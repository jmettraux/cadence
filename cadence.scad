
// pineapple slice
//
module paslice(radius, depth, slice=45, center=false, radius1=0) {

  difference() {

    cylinder(depth, r=radius, center=center);

    translate([ 0, 0, -0.1 ])
      cylinder(depth * 1.1, r=radius1, center=center);

    cz = (center ? - depth / 2 : 0) - 0.1;
    d = depth + 0.2;

    if (slice <= 90)
      translate([ 0, -radius, cz ]) cube([ radius, radius, d ]);
    if (slice <= 180)
      translate([ -radius, -radius, cz ]) cube([ radius, radius, d ]);
    if (slice <= 270)
      translate([ -radius, 0, cz ]) cube([ radius, radius, d ]);

    a = - floor(slice / 90) * 90;
    s = 90 - slice % 90;
    echo(s);
    if (s != 90) {
      opp = radius * tan(s);
      translate([ 0, 0, -0.1 ]) rotate([ 0, 0, a ]) linear_extrude(d)
        polygon([ [ 0, 0 ], [ radius, 0 ], [ radius, opp ] ]);
    }
  }
}
paslice(100, 20, radius1=70, slice=46);

