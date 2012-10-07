accessing
listEditor
    listEditor ifNil: [ listEditor := TopezListEditor new ].
    ^ listEditor