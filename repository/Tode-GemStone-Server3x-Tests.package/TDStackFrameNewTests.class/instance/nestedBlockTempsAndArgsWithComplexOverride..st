block methods
nestedBlockTempsAndArgsWithComplexOverride: arg1
  | a b c d e f block |
  a := 1.
  b := 2.
  c := 3.
  d := 4.
  e := 5.
  f := 6.
  block := [ | c d |
  c := 13.
  1 to: 3 do: [ :index | f := index ].
  [ | d e |
  e := 25.
  self halt ] value ] value.
  block value