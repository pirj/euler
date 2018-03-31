: is-palindrome? ( n -- b ) number>string dup reverse = ;

100 999 [a,b]
  [ 100 over [a,b] [ over * ] map nip ] map
  concat
  natural-sort reverse
  [ is-palindrome? ] find nip
  .
