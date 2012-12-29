accessing
listEditor
  listEditor
    ifNil: [ 
      listEditor := TodeListEditor new.
      listEditor
        editor: self;
        addDependent: self ].
  ^ listEditor