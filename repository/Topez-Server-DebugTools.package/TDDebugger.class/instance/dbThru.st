debug ops
dbThru
  self dbSetThruBreaksDuring: [ self dbStep: #'over' ].
  ^ self dbFinishStep