: evenly-divisible-by-up-to? ( integer maximum-divisor -- b ) [1,b] swap [ swap divisor? ] curry all? ;

1 [ dup 20 evenly-divisible-by-up-to? ] [ 1 + ] until .
