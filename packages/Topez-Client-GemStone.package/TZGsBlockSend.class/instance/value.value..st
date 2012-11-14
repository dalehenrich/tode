accessing
value: arg1 value: arg2
    ^ self
        perform: [ 
            self numArgs ~= 2
                ifTrue: [ ^ self error: 'incorrect block args' ].
            self session
                rawReceiverNB: self blockOopType
                perform: 'value:value:'
                withArgs:
                    {arg1.
                    arg2} ]