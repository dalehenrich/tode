menu actions
printClientListMenuAction: listElement selectionIndex: selectionIndex
  | stream |
  stream := TextStream on: Text new.
  stream
    nextPutAll: self editorWindowLabel asText allBold;
    cr;
    nextPutAll: '--------------------';
    cr.
  (self clientList: listElement) key
    do: [ :text | 
      stream
        nextPutAll: text;
        cr ].
  stream contents
    printUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'printer';
        yourself).
  ^ true