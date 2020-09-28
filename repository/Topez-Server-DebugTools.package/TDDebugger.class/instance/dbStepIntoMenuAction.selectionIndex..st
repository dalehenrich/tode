menu actions
dbStepIntoMenuAction: listElement selectionIndex: selectionIndex
  | ans |
  (ObjectLogEntry
    trace: 'dbStepIntoMenuAction: [1]'
    object:
      {listElement.
      selectionIndex}) addToLog.
  self dbStep: #'into'.
  (ObjectLogEntry trace: 'dbStepIntoMenuAction: [2]') addToLog.
  ans := self dbFinishStep.
  (ObjectLogEntry trace: 'dbStepIntoMenuAction: [3]' object: ans) addToLog.
  ^ ans