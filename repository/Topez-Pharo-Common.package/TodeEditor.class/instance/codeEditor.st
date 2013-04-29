accessing
codeEditor
  codeEditor
    ifNil: [ 
      codeEditor := TodeCodeEditor new.
      codeEditor
        editor: self;
        addDependent: self ].
  ^ codeEditor