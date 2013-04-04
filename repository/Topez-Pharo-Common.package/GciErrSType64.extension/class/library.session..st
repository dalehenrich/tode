*topez-pharo-common
library: aGciLibrary session: aTodeSession
  | instance |
  instance := self new
    initializeUsingSton: aGciLibrary session: aTodeSession;
    yourself.
  instance category isNil
    ifTrue: [ ^ nil ].
  ^ instance