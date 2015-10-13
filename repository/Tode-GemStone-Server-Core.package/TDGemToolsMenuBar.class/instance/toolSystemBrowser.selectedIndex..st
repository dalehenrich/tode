menu actions
toolSystemBrowser: listElement selectedIndex: index
  | browseTool |
  browseTool := self topez toolInstanceFor: 'browse'.
  browseTool browseClassHierarchy: Object label: 'Hierarchy for Object'.
  ^ true