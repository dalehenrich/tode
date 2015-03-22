menu actions
debugViewObjectLogContinuations: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool
    olView: [ 
      System commitTransaction.
      ObjectLogEntry objectLog select: [ :each | each hasContinuation ] ]
    reversed: false
    label: 'Object Log Continuations'.
  ^ true