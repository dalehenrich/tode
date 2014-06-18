accessing
listEditor
  listEditor
    ifNil: [ 
      listEditor := TodeKeymappedListEditor new.
      listEditor
        editor: self;
        addDependent: self ].
  ^ listEditor