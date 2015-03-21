menu actions
doitStoneVersionReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  (gsTool gsversion: #'stone') edit: listElement topez.
  ^ true