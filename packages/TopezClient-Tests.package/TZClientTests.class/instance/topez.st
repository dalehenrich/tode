accessing
topez
    topez
        ifNil: [ 
            super topez
                sessionDescription: self sessionDescription;
                login ].
    ^ topez