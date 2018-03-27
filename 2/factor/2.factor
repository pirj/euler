-- { 1 2 } [ 1000 < ] [ [ last2 ] keep -rot + [ suffix ] keep ] do while 1 head* [ even? ] filter sum .

-- This is more likely to be factorable
{ 1 } 2
  [ dup 4000000 < ]
  [ [ dup last ] dip [ + ] keep swap [ suffix ] dip ] while
  drop
  [ even? ] filter sum .
