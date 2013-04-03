accessing
listEditor
    listEditor
        ifNil: [ 
            listEditor := TopezListEditor new.
            listEditor
                editor: self;
                addDependent: self ].
    ^ listEditor