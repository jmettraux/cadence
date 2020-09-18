
//
// test_list.scad
//
// Sat Sep 19 06:29:51 JST 2020
//

use <../src/cadence.scad>;

l = [ 0, 1, 2, 3, 4, "five", 6, undef ];

assert(_idx(l, 1) == 1);
assert(_idx(l, 5) == "five");
assert(_idx(l, 7) == undef);
assert(_idx(l, 7, "other") == "other");
assert(_idx(l, 9) == undef);
assert(_idx(l, 9, "neuf") == "neuf");

assert(_slist(l, 4) == [ 4, "five", 6, undef ]);
assert(_slist(l, 7) == [ undef ]);
assert(_slist(l, 8) == []);

assert(_slist(l, 0, 1) == [ 0, 1 ]);
assert(_slist(l, 0, 2) == [ 0, 1, 2 ]);
assert(_slist(l, 1, 3) == [ 1, 2, 3 ]);

assert(_slist(l, -1) == [ undef ]);
assert(_slist(l, -4) == [ 4, "five", 6, undef ]);

echo(_slist(l, -4, -2));
assert(_slist(l, -4, -2) == [ 4, "five", 6 ]);
assert(_slist(l, -4, -3) == [ 4, "five" ]);

