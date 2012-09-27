accessing
topez
    topez
        ifNil: [ 
            topez := self clientClass new
                sessionDescription: self sessionDescription;
                login ].
    ^ topez