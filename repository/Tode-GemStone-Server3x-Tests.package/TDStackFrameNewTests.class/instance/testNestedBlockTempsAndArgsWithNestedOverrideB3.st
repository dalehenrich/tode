tests
testNestedBlockTempsAndArgsWithNestedOverrideB3
  | nestedValueMap |
  nestedValueMap := Dictionary new
    at: 'a' put: 1;
    at: 'arg1' put: 3;
    at: 'b' put: 2;
    at: 'c' put: 3;
    at: 'index' put: 4;
    at: 'x' put: 100;
    yourself.
  self
    nestedBlockTempsAndArgsWithNestedOverride:
      #'nestedBlockTempsAndArgsWithNestedOverrideB3:'
    nestedValueMap: nestedValueMap