block methods
execBlock4
  | block1 |
  block1 := [ :arg1 :arg2 :arg3 :arg4 |  ].
  block1
    value: 1
    value: 2
    value: 3
    value: 4.
  ^ block1