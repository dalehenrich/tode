tests
testNestedBlockTempsAndArgsWithNestedOverrideE
  | nestedValueMap |
  nestedValueMap := Dictionary new
    at: 'a' put: 1;
    at: 'arg1' put: 3;
    at: 'b' put: 2;
    at: 'c' put: 3;
    yourself.
  self
    nestedBlockTempsAndArgsWithNestedOverride:
      #'nestedBlockTempsAndArgsWithNestedOverrideE:'
    nestedValueMap: nestedValueMap