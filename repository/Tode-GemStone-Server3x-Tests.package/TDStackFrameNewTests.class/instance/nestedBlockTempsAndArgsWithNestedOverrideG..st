block methods
nestedBlockTempsAndArgsWithNestedOverrideG: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c x index |
  c := 3.
  1 to: 4 do: [ :index | x := 100 ].
  b := 4.
  [ a halt ] value.
  b := 5 ] value