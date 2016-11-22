private
nestedBlockMethodWithArgs: a b: b
  | temp1 temp2 |
  temp1 := 1.
  temp2 := b.
  ^ [ | temp3 |
  temp3 := temp1 + a.
  self haltMethod ] value