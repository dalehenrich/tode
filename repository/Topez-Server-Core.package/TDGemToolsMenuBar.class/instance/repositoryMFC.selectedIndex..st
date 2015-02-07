menu actions
repositoryMFC: listElement selectedIndex: index
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  gsTool gsMFC.
  ^ true