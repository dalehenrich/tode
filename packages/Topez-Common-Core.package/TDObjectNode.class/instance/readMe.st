*topez-common-core
readMe
    readMe
        ifNil: [ 
            ^ 'I am a' , (Reflection classOf: self) name asString , ' wrapping an instance of '
                , (Reflection classOf: self dotSelfObject) name asString ].
    ^ super readMe