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
  number = 4100
    ifTrue: [ self readArguments ]
    ifFalse: [ self readArgumentsAndExceptionClassUsingStonIn: aTodeSession ].
  address := nil.
  library := nil