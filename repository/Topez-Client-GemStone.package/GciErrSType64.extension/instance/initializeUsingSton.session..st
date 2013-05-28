*topez-client-gemstone
initializeUsingSton: aGciLibrary session: aTodeSession
  library := aGciLibrary.
  address := ExternalAddress gcallocate: self structSize.
  (aGciLibrary apiGciErr: address asInteger)
    ifFalse: [ ^ self ].
  self
    readSimpleFields;
    readMessage;
    yourself.
  (number > 4000 and: [ number < 5000 ])
    ifTrue: [ self readArguments ]
    ifFalse: [ 
      TDReadingGciErrorArguments signal.
      [ self readArgumentsAndExceptionClassUsingStonIn: aTodeSession ]
        on: TDReadingGciErrorArguments
        do: [ :ex | 
          "recursion protection"
          self halt readArguments ] ].
  address := nil.
  library := nil