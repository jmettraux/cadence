
//
// test_string.scad
//
// Sat May  1 10:44:36 JST 2021
//

use <../src/cadence.scad>;


//echo(_sstr("abcde"));
//echo(_sstr("abcde", 1));
//echo(_sstr("abcde", 1, 2));
//echo(_sstr("abcde", -4, 2));

assert(_sstr("abcde") == "abcde");
assert(_sstr("abcde", 1) == "bcde");
assert(_sstr("abcde", 1, 2) == "bc");
assert(_sstr("abcde", 1, 100) == "bcde");

assert(_sstr("abcde", -2) == "de");
assert(_sstr("abcde", -4, 3) == "bcd");

// nota bene:
//if(undef) echo("nada0");
//if(true) echo("nada1");
//if(-1) echo("nada2");

echo(_sindex("height ratio", "ratio"));
assert(_sindex("height ratio", "rad") == undef);
assert(_sindex("height ratio", "ratio") == 7);
assert(_sindex("height rati", "ratio") == undef);

//
// SUCCESS, green ball!

color("green") sphere(7);

