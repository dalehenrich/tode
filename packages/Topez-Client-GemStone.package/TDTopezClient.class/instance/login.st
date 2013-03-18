as yet unclassified
login
  | desc sess |
  desc := self sessionDescription.
  sess := self todeSessionClass new
    topez: self;
    yourself.
  (sess loginWith: self sessionDescription)
    ifFalse: [ 
      | gciError messageText |
      gciError := sess getAndClearLastError.
      messageText := gciError message.
      ^ Error
        signal:
          messageText
            ,
              ' For further information about login failures, check the gem log file' ].
  ^ sess