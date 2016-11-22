private
nestedBlockNoSelf
  [ | temp1 temp2 |
  temp1 := 1.
  ^ [ | temp3 |
  temp3 := temp1.
  self haltMethod ] value ] value