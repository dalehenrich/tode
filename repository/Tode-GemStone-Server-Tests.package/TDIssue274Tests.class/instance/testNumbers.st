tests
testNumbers
  {1234567890.
  0.1234567890.
  (1234567890 / 12345678901).
  (DecimalFloat pi).
  (ScaledDecimal for: 0.1234567890 scale: 4)}
    do: [ :coll | 
      coll
        printStringLimitedTo: 2;
        printStringLimitedTo: 100 ]