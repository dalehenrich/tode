menu actions
browseProjectClassesMenuAction: listElement selectionIndex: selectionIndex
  | registration block |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  | defs |
  defs := {(TDClassDefinition className: registration projectSpec className)}.
  defs
    addAll:
      (TDConfigurationDefinition new projectSpec: registration projectSpec)
        classDefinitions.
  defs ].
  self browseTool
    browseClassesBlock: block
    label: 'Classes in ' , registration projectName.
  ^ true