as yet unclassified
login
  | desc sess |
  desc := self sessionDescription.
  sess := TodeSession new
    gemNRS: desc gemNRS;
    stoneNRS: desc stoneNRS;
    userID: desc userId;
    topez: self;
    yourself.
  (sess
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
      gciError := sess getAndClearLastError.
      messageText := gciError message.
      ^ Error signal: messageText , ' For further information about login failures, check the gem log file' ].
  ^ sess