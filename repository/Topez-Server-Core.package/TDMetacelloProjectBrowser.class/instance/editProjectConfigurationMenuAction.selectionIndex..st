menu actions
editProjectConfigurationMenuAction: listElement selectionIndex: selectionIndex
  | registration cls ans |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  cls := Smalltalk at: registration projectSpec className.
  ans := true.
  cls
    ifNil: [ 
      self getProjectMenuAction: listElement selectionIndex: selectionIndex.
      ans := #'refreshView'.
      cls := Smalltalk at: registration projectSpec className ].
  self browseTool
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ ans