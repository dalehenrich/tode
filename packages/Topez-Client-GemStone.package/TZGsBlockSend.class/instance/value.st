accessing
value
    ^ self
        perform: [ 
            self numArgs ~= 0
                ifTrue: [ ^ self error: 'incorrect block args' ].
            self session rawReceiverNB: self blockOopType perform: 'value' withArgs: #() ]