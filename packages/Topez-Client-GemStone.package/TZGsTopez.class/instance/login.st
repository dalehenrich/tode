session management
login
    | desc |
    desc := self sessionDescription.
    session := GciSession new
        gemNRS: desc gemNRS;
        stoneNRS: desc stoneNRS;
        userID: desc userId;
        yourself.
    (session
        login: desc password
        osUser:
            (desc isGuest
                ifTrue: [ '' ]
                ifFalse: [ desc osUserId ])
        osPassword:
            (desc isGuest
                ifTrue: [ '' ]
                ifFalse: [ desc osPassword ]))
        ifFalse: [ 
            | gciError messageText |
            gciError := session getAndClearLastError.
            messageText := gciError message.
            session := nil.
            ^ Error signal: messageText , ' For further information about login failures, check the gem log file' ].
    currentEngine := self executeStringInSession: 'TZEngine toString: TZEngine level: 0'