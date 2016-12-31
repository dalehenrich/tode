private
nestedBlockTempsAndArgsWithNestedOverride: selector
  | nestedValueMap |
  nestedValueMap := Dictionary new
    at: 'arg1' put: 3;
    at: 'b' put: 4;
    at: 'c' put: 3;
    yourself.
  self
    nestedBlockTempsAndArgsWithNestedOverride: selector
    nestedValueMap: nestedValueMap