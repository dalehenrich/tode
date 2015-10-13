menu actions
doitClearObjectLog: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool olClear.
  ^ true