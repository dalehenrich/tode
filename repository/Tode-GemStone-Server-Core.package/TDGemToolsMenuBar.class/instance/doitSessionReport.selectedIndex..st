menu actions
doitSessionReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool gsSessionDescription: System session.
  ^ true