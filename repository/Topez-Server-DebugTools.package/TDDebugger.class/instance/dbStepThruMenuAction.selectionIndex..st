menu actions
dbStepThruMenuAction: listElement selectionIndex: selectionIndex
  (self topez effectiveApiVersion < '1.4.0' asMetacelloVersionNumber
    or: [ 
      (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
        < '3.2.0' asMetacelloVersionNumber ])
    ifTrue: [ self dbSetThruBreaksDuring: [ self dbStep: #'over' ] ]
    ifFalse: [ self dbStep: #'thru' ].
  ^ self dbFinishStep