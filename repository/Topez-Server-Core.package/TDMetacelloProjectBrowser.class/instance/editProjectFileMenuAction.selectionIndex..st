menu actions
editProjectFileMenuAction: listElement selectionIndex: selectionIndex
  | registration entryNode entry |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  entryNode := registration entryNode: nil topez: topez.
  entry := registration entry.
  entryNode
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowLabel:
            entryNode printString , ' (' , entry baseProjectPath , entryNode name , ')';
        yourself).
  ^ true