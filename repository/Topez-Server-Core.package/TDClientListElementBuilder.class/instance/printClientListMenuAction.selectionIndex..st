menu actions
printClientListMenuAction: listElement selectionIndex: selectionIndex
  | stream |
  stream := TextStream on: Text new.
  (self clientList: listElement)
    do: [ :text | 
      stream
        nextPutAll: text;
        cr ].
  stream contents
    printUsing: (TDEditorSpec topez: listElement topez editorAspect: #'edit').
  ^ true