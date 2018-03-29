! { 1 2 }
!   [ 4000000 < ]
!   [ [ last2 ] keep -rot + [ suffix ] keep ] do while 1 head*
!   [ even? ] filter sum .

! This is more likely to be factorable
! { 1 } 2
!   [ dup 4000000 < ]
!   [ [ dup last ] dip [ + ] keep swap [ suffix ] dip ] while
!   drop
!   [ even? ] filter sum .

! { 1 2 } ! Initial data for the sequence
!   [ dup last2 + suffix ] ! take the last two values, sum and push back
!   lfrom-by ! in a lazy manner
!   [ last 4000000 < ] lwhile
!   list>array last
!   [ even? ] filter
!   sum .

{ 1 } 2
  [ dup 4000000 < ]
  [ suffix dup last2 + ] while
  drop
  [ even? ] filter
  sum .
