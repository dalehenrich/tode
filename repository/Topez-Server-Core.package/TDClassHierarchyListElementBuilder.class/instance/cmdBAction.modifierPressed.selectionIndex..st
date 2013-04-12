as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class"

  | itemAttribute className def |
  selectionIndex == 0
    ifTrue: [ 
      ^ super
        cmdBAction: listElement
        modifierPressed: modifierPressed
        selectionIndex: selectionIndex ].
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  {def}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true