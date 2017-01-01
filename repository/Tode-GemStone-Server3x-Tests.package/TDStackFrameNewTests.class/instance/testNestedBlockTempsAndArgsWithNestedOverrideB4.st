tests
testNestedBlockTempsAndArgsWithNestedOverrideB4
  | nestedValueMap |
  nestedValueMap := Dictionary new
    at: 'arg1' put: 3;
    at: 'b' put: 4;
    at: 'c' put: 3;
    at: 'index' put: 4;
    at: 'x' put: 100;
    yourself.
  self
    nestedBlockTempsAndArgsWithNestedOverride:
      #'nestedBlockTempsAndArgsWithNestedOverrideB4:'
    nestedValueMap: nestedValueMap