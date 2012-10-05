accessing
topezClient
    topezClient
        ifNil: [ 
            topezClient := self topezClientClass new.
            self initTopezClient ].
    ^ topezClient