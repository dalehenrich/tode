accessing
buttonBarEditor
  buttonBarEditor
    ifNil: [ 
      buttonBarEditor := TodeButtonBarEditor new.
      buttonBarEditor
        editor: self;
        addDependent: self ].
  ^ buttonBarEditor