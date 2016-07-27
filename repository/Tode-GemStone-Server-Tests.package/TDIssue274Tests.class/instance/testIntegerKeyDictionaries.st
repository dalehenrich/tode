tests
testIntegerKeyDictionaries
  {IntegerKeyValueDictionary}
    do: [ :dictinoaryClass | 
      | dict |
      dict := dictinoaryClass new
        at: 1 put: 'x';
        at: 2 put: 'y';
        at: 3 put: 'z';
        yourself.
      dict
        printStringTodeLimitedTo: 2;
        printStringTodeLimitedTo: 100 ]