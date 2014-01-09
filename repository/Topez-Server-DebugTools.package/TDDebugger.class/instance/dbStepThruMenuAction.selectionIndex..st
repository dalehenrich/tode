menu actions
dbStepThruMenuAction: listElement selectionIndex: selectionIndex
  self dbSetThruBreaksDuring: [ self dbStep: #'over' ].
  ^ self dbFinishStep