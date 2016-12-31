block methods
nestedBlockTempsAndArgsWithNestedOverrideA: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c |
  c := 3.
  b := 4.
  [ a halt ] value ] value