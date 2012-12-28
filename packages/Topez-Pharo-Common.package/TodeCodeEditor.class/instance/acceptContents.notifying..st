accessing
acceptContents: aStringOrText notifying: aController
  "Set aString to be the contents of the receiver.  Return true cuz happy"

  [ self clientElement source: aStringOrText ]
    on: TZTopezNotification
    do: [ :ex | 
      (ex isKindOf: TZTopezCompilerErrorNotification)
        ifTrue: [ 
          | report |
          report := self clientElement reportCompileErrors: ex exceptionProxy.
          aController notify: (report at: 1) at: (report at: 2) in: aStringOrText.
          ^ false ]
        ifFalse: [ 
          self topez exception: ex exceptionProxy.
          self error: 'server error during accept: ' , ex description ] ].
  ^ true