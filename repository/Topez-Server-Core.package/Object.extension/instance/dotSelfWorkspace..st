*topez-server-core
dotSelfWorkspace: topez
  | strm |
  strm := WriteStream on: String new.
  strm
    nextPutAll: '" ' , self printString , ' instance variables...';
    cr;
    cr;
    nextPutAll: 'self';
    cr;
    cr.
  self dotSelfObject class allInstVarNames
    do: [ :name | 
      strm
        nextPutAll: name;
        cr ].
  strm nextPutAll: '"'.
  ^ strm contents
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , self printString;
        windowName: #'workspace';
        yourself)
    objectBlock: [ self ]