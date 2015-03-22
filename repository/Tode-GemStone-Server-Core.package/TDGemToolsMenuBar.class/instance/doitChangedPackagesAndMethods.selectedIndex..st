menu actions
doitChangedPackagesAndMethods: listElement selectedIndex: index
  | projectTool |
  projectTool := self topez toolInstanceFor: 'project'.
  projectTool projectsummary.
  ^ true