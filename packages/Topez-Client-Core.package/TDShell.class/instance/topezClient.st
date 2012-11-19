accessing
topezClient
    topezClient
        ifNil: [ 
            topezClient := TDTopezClient new
                shell: self;
                yourself ].
    ^ topezClient