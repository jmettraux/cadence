
module quart(radius, depth, quarts=3, center=false, radius1=0) {

  difference() {

    cylinder(depth, r=radius, center=center);

    cylinder(depth, r=radius1, center=center);

    cz = center ? - depth / 2 : 0;
    if (quarts > 0)
      translate([ 0, 0, cz ]) cube([ radius, radius, depth ]);
    if (quarts > 1)
      translate([ 0, -radius, cz ]) cube([ radius, radius, depth ]);
    if (quarts > 2)
      translate([ -radius, -radius, cz ]) cube([ radius, radius, depth ]);
  }
}
quart(100, 20, 2, false, radius1=70);

