menu actions
doitGemVersionReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  (gsTool gsversion: #'gem') edit: listElement topez.
  ^ true