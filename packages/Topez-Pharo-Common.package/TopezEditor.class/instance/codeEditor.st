accessing
codeEditor
    codeEditor
        ifNil: [ 
            codeEditor := TopezCodeEditor new.
            codeEditor addDependent: self ].
    ^ codeEditor