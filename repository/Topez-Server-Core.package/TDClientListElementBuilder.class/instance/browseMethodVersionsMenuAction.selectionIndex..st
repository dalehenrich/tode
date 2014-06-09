menu actions
browseMethodVersionsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute block |
  itemAttribute := listElement itemCache at: selectionIndex.
  block := [ 
  | def |
  def := itemAttribute object.
  def versionsOf ].
  block value
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        objectBlock: block;
        yourself).
  ^ true