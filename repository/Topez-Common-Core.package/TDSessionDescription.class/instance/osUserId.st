accessing
osUserId
  osUserId == nil
    ifTrue: [ ^ (Smalltalk at: #'OSPlatform') current environment getEnv: 'USER' ].
  ^ osUserId