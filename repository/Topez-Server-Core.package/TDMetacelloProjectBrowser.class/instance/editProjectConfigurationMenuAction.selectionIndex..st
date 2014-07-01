menu actions
editProjectConfigurationMenuAction: listElement selectionIndex: selectionIndex
  | registration cls ans |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  ans := true.
  cls := Smalltalk
    at: registration configurationClassName
    ifAbsent: [ 
      self getProjectMenuAction: listElement selectionIndex: selectionIndex.
      ans := #'refreshView'.
      Smalltalk at: registration configurationClassName ].
  self browseTool
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ ans