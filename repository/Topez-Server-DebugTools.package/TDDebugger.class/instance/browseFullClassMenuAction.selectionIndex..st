actions
browseFullClassMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  cls := self theBehavior.
  cls asTDClassDefinition
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'hierarchyList')
        parentObject: listElement parent;
        windowName: #'hierarchy';
        yourself).
  ^ true