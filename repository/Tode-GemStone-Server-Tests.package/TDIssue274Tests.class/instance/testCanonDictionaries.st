tests
testCanonDictionaries
  (CanonStringDict new
    add: 'x';
    add: 'y';
    add: 'z';
    yourself)
    printStringTodeLimitedTo: 2;
    printStringTodeLimitedTo: 100