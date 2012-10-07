accessing
codeEditor
    codeEditor ifNil: [ codeEditor := TopezCodeEditor new ].
    ^ codeEditor