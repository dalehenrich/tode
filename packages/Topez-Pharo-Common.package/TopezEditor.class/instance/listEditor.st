accessing
listEditor
    listEditor
        ifNil: [ 
            listEditor := TopezListEditor new.
            listEditor addDependent: self ].
    ^ listEditor