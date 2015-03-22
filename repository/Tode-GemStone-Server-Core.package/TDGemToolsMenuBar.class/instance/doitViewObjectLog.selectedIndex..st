menu actions
doitViewObjectLog: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool olView.
  ^ true