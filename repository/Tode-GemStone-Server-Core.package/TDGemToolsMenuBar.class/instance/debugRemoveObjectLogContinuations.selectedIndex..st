menu actions
debugRemoveObjectLogContinuations: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool olClear: #() age: nil continuations: true.
  ^ true