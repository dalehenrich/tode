as yet unclassified
loginUsing: todeSessionClass
  | desc sess |
  self proxyBehaviorClass resetAllGlobalNames.	"reset the cache on login"
  desc := self sessionDescription.
  sess :=  todeSessionClass new
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