menu actions
dbStepOverMenuAction: listElement selectionIndex: selectionIndex
  | ans |
  (ObjectLogEntry
    trace: 'dbStepOverMenuAction: [1]'
    object:
      {listElement.
      selectionIndex}) addToLog.
  self dbStep: #'over'.
  (ObjectLogEntry trace: 'dbStepOverMenuAction: [2]') addToLog.
  ans := self dbFinishStep.
  (ObjectLogEntry trace: 'dbStepOverMenuAction: [3]' object: ans) addToLog.
  ^ ans