menu actions
dbStepOverMenuAction: listElement selectionIndex: selectionIndex
  | ans |
  self dbStep: #'over'.
  ans := self dbFinishStep.
  ^ ans