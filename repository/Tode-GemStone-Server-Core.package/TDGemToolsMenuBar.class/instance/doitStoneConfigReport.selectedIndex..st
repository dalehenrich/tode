menu actions
doitStoneConfigReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  (gsTool gsconfiguration: #'stone') edit: listElement topez.
  ^ true