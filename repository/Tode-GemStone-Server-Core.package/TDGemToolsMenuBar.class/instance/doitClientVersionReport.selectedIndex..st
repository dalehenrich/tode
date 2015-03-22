menu actions
doitClientVersionReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  (gsTool gsversion: #'client') edit: listElement topez.
  ^ true