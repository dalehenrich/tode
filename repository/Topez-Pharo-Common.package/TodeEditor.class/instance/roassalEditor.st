accessing
roassalEditor
  roassalEditor
    ifNil: [ 
      roassalEditor := TodeRoassalEditor new.
      roassalEditor
        editor: self;
        addDependent: self ].
  ^ roassalEditor