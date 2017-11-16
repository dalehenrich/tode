debugger
dotSelfWorkspace: topez
  | strm |
  strm := WriteStream on: String new.
  strm
    nextPutAll: '"Context args and temps...';
    cr;
    cr;
    nextPutAll: 'self';
    cr;
    cr.
  self theSelf class allInstVarNames
    do: [ :name | 
      strm
        nextPutAll: name;
        cr ].
  strm nextPutAll: '"'.
  ^ strm contents
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , self theSelf printString;
        windowName: #'workspace';
        yourself)
    objectBlock: [ self theSelf ]