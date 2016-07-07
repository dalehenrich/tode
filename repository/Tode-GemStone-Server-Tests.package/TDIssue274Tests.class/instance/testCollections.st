tests
testCollections
  {{1.
  2.
  3}.
  ({1.
  2.
  3} asByteArray).
  'xyz'.
  (1 to: 3).
  (Bag with: #'new').
  (Set with: #'new')}
    do: [ :coll | 
      coll
        printStringTodeLimitedTo: 2;
        printStringTodeLimitedTo: 100 ]