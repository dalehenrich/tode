menu actions
dbContinueMenuAction: listElement selectionIndex: selectionIndex
  | ans |
  (ObjectLogEntry
    trace: 'dbContinueMenuAction: [1]'
    object:
      {listElement.
      selectionIndex}) addToLog.
  ans := self dbContinue.
  (ObjectLogEntry trace: 'dbContinueMenuAction: [2]' object: ans) addToLog.
  ^ ans