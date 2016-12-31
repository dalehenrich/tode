block methods
nestedBlockTempsAndArgsWithNestedOverrideB4: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c |
  c := 3.
  1 to: 4 do: [ :index | | x |
    x := 100 ].
  b := 4.
  [ a halt ] value.
  b := 5 ] value