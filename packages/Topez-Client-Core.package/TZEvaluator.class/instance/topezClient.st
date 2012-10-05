accessing
topezClient
    topezClient
        ifNil: [ 
            topezClient := self topezClientClass new.
            topezClient
                sessionDescription: self sessionDescription;
                login ].
    ^ topezClient