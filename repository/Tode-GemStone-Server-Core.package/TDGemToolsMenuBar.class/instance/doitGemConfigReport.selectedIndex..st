menu actions
doitGemConfigReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  (gsTool gsconfiguration: #'gem') edit: listElement topez.
  ^ true