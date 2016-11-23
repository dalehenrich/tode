block methods
execBlock3
  | block1 |
  block1 := [ :arg1 :arg2 :arg3 |  ].
  block1 value: 1 value: 2 value: 3.
  ^ block1