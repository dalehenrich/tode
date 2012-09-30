accessing
topezClient
    topezClient
        ifNil: [ 
            topezClient := TZClientTopez new.
            topezClient
                sessionDescription: self sessionDescription;
                login ].
    ^ topezClient