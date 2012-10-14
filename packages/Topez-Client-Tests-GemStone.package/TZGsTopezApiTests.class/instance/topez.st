accessing
topez
    topez
        ifNil: [ 
            topez := self clientClass new.
            topez
                sessionDescription: self sessionDescription;
                login ].
    ^ topez