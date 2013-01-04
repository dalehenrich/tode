*topez-pharo-common
initializeUsingSton: aGciLibrary session: aTodeSession
  library := aGciLibrary.
  address := ExternalAddress gcallocate: self structSize.
  (aGciLibrary apiGciErr: address asInteger)
    ifFalse: [ ^ self ].
  self
    readSimpleFields;
    readMessage;
    readArgumentsAndExceptionClassUsingStonIn: aTodeSession;
    yourself.
  address := nil.
  library := nil