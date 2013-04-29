as yet unclassified
testLogin
  [ 
  | sess description |
  sess := TodeSession new.
  description := self testSessionDescriptionFor: '3.1.0.2'.
  (sess loginWith: description)
    ifFalse: [ 
      | gciError messageText |
      gciError := sess getAndClearLastError.
      messageText := gciError message.
      Transcript
        cr;
        show: 'FAILED LOGIN: ' , messageText.
      self assert: false ].
  sess logout ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: 'ERROR: ' , ex description.
      self halt ]