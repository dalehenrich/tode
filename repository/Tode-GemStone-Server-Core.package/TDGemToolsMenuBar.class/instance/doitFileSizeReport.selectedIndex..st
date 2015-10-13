menu actions
doitFileSizeReport: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool gsfileSizeReport.
  ^ true