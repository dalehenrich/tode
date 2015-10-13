menu actions
help: listElement selectedIndex: index
  | manTool |
  manTool := self topez toolInstanceFor: 'man'.
  manTool manAll.
  ^ true