accessing
userGlobals
  ^ userGlobals
    ifNil: [ userGlobals := (AllUsers userWithId: 'Ernie') objectNamed: 'UserGlobals' ]