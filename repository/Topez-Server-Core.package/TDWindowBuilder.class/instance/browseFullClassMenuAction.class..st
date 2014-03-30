menu actions
browseFullClassMenuAction: listElement class: cls
  (self browseTool: listElement)
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ true