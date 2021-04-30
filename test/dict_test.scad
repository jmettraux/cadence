
//
// test_dict.scad
//
// Fri Sep 18 08:44:46 JST 2020
//

use <../src/cadence.scad>;


//
// dict

di = [ [ "a", 0 ], [ "b", 1 ], [ "c", 2 ] ];

assert(_get(di, "b") == 1);
assert(_get(di, "z") == undef);

assert(_get(di, "z", 1) == 1);
assert(_get(di, "z", undef) == undef);

assert(_del(di, "c") == [ [ "a", 0 ], [ "b", 1 ] ]);
assert(_del(di, "z") == [ [ "a", 0 ], [ "b", 1 ], [ "c", 2 ] ]);

assert(_put(di, "d", 3) == [ [ "a", 0 ], [ "b", 1 ], [ "c", 2 ], [ "d", 3 ] ]);
assert(_put(di, "a", 3) == [ [ "b", 1 ], [ "c", 2 ], [ "a", 3 ] ]);


di1 = [
  [ "to spine", 0 ],
  [ "to left elbow", [ 0, 45 ] ],
  [ "to right toe", 2 ] ];

assert(_get(di1, "to spine") == 0);
assert(_get(di1, "to spine", 1) == 0);
assert(_get(di1, "to left elbow") == [ 0, 45 ]);
assert(_get(di1, "to left elbow", 1) == [ 0, 45 ]);

di2 = [
  "to spine", 0,
  "to left elbow", [ 0, 45 ],
  "to right toe", 2 ];

assert(_get(di2, "to spine") == 0);
assert(_get(di2, "to spine", 1) == 0);
assert(_get(di2, "to left elbow") == [ 0, 45 ]);
assert(_get(di2, "to left elbow", 1) == [ 0, 45 ]);


//
// assoc

a0 = [ [ "a", 0, 1, 2 ], [ "b", 3, 4 ], [ "a", 5, 6 ] ];

assert(_assoc(a0, "a") == [ "a", 0, 1, 2 ]);
assert(_assoc(a0, "b") == [ "b", 3, 4 ]);
assert(_assoc(a0, "c") == undef);
assert(_assoc(a0, "c", "nada") == "nada");

