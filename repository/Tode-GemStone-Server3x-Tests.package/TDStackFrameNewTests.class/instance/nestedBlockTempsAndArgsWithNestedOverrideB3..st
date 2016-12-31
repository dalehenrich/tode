block methods
nestedBlockTempsAndArgsWithNestedOverrideB3: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c |
  c := 3.
  1 to: 4 do: [ :index | | x |
    x := 100 ].
  [ a halt ] value.
  b := 4 ] value