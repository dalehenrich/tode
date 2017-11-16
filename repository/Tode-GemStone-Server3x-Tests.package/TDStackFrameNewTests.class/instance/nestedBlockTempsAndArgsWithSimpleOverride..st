block methods
nestedBlockTempsAndArgsWithSimpleOverride: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c |
  c := 3.
  [ c := 4.
  a halt ] value ] value