testing
isHalt
  ^ self number = self class err_Halt
    and: [ (args at: 1) == #'halt' and: [ (args at: 2) = '#halt encountered' ] ]