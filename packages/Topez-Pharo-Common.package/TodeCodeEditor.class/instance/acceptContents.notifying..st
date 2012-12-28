accessing
acceptContents: aStringOrText notifying: aController
  "Set aString to be the contents of the receiver.  Return true cuz happy"

  [ self clientElement source: aStringOrText ]
    on: TZTopezNotification
    do: [ :ex | 
      self topez exception: ex exceptionProxy.
      self error: 'server error during accept: ' , ex description ].
  ^ true