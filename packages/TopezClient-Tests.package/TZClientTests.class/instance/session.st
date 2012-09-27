accessing
session
    session
        ifNil: [ 
            session := self clientClass new
                sessionDescription: self sessionDescription;
                login ].
    ^ session