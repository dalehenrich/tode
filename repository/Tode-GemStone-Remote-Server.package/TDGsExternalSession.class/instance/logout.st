Public
logout
  (self inDebugger and: [ self logoutOnClose ])
    ifTrue: [ ^ self ].
  super logout