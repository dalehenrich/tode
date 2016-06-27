tests
testCollections
  {{1.
  2.
  3}.
  #[1 2 3].
  (Dictionary new
    at: #'x' put: 'x';
    at: #'y' put: 'y';
    at: #'z' put: 'z';
    yourself).
  'xyz'.
  (1 to: 3).
  (Bag with: #'new').
  (Set with: #'new')}
    do: [ :coll | 
      coll
        printStringLimitedTo: 2;
        printStringLimitedTo: 100 ]