actions
unregister
  self registration
    ifNotNil: [ 
      | registry |
      registry := self registration class registry.
      registry
        registrationFor: self registration
        ifPresent: [ :reg | reg unregisterProject ]
        ifAbsent: [  ] ]