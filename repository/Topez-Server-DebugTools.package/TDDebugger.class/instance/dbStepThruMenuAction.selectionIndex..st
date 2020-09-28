menu actions
dbStepThruMenuAction: listElement selectionIndex: selectionIndex
  | ans |
  (ObjectLogEntry
    trace: 'dbStepThruMenuAction: [1]'
    object:
      {listElement.
      selectionIndex}) addToLog.
  (self topez effectiveApiVersion < '1.4.0' asMetacelloVersionNumber
    or: [ 
      (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
        < '3.2.0' asMetacelloVersionNumber ])
    ifTrue: [ 
      (ObjectLogEntry trace: 'dbStepThruMenuAction: [2]') addToLog.
      self dbSetThruBreaksDuring: [ self dbStep: #'over' ] ]
    ifFalse: [ 
      (ObjectLogEntry trace: 'dbStepThruMenuAction: [3]') addToLog.
      self dbStep: #'thru' ].
  ans := self dbFinishStep.
  (ObjectLogEntry trace: 'dbStepThruMenuAction: [4]' object: ans) addToLog.
  ^ ans