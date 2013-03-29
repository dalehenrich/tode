accessing
codeEditor
    codeEditor
        ifNil: [ 
            codeEditor := TopezCodeEditor new.
            codeEditor
                editor: self;
                addDependent: self ].
    ^ codeEditor