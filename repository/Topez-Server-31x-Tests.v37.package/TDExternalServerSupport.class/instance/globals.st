accessing
globals
  ^ globals
    ifNil: [ globals := (AllUsers userWithId: 'SystemUser') objectNamed: 'Globals' ]