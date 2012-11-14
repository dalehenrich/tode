accessing
value: arg
    ^ self
        perform: [ 
            self numArgs ~= 1
                ifTrue: [ ^ self error: 'incorrect block args' ].
            self session rawReceiverNB: self blockOopType perform: 'value:' withArgs: {arg} ]