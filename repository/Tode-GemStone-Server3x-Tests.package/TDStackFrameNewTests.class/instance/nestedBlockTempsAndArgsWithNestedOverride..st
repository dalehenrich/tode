private
nestedBlockTempsAndArgsWithNestedOverride: selector
  | nestedValueMap |
  nestedValueMap := Dictionary new
    at: 'a' put: 1;
    at: 'arg1' put: 3;
    at: 'b' put: 4;
    at: 'c' put: 3;
    yourself.	"    at: 'index' put: 4;
    at: 'x' put: 100;"
  self
    nestedBlockTempsAndArgsWithNestedOverride: selector
    nestedValueMap: nestedValueMap