accessing
valueWithArguments: args
    ^ self
        perform: [ 
            self numArgs ~= args size
                ifTrue: [ ^ self error: 'incorrect block args' ].
            self session rawReceiverNB: self blockOopType perform: 'valueWithArguments:' withArgs: args ]