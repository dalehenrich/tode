accessing
acceptContents: aStringOrText notifying: aController
  "Set aString to be the contents of the receiver.  Return true cuz happy"

  [ self clientElement source: aStringOrText ]
    on: TZTopezCompilerErrorNotification
    do: [ :ex | 
      | report |
      report := self clientElement reportCompileErrors: ex exceptionProxy.
      aController notify: (report at: 1) , '->' at: (report at: 2) in: aStringOrText.
      ^ false ].
  ^ true