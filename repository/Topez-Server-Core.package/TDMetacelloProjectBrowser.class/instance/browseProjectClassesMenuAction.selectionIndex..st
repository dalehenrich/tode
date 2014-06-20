menu actions
browseProjectClassesMenuAction: listElement selectionIndex: selectionIndex
  | registration block |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ registration classDefinitions ].
  self browseTool
    browseClassesBlock: block
    label: 'Classes in ' , registration projectName.
  ^ true