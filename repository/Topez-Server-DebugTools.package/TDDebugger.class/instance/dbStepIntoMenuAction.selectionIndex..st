menu actions
dbStepIntoMenuAction: listElement selectionIndex: selectionIndex
  | ans |
  self dbStep: #'into'.
  ans := self dbFinishStep.
  ^ ans