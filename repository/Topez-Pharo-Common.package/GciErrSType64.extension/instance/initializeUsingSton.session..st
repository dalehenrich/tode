*topez-pharo-common
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
    ifFalse: [ self readArgumentsAndExceptionClassUsingStonIn: aTodeSession ].
  address := nil.
  library := nil