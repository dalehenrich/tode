accessing
methodDestinationCategory
  self operation targetDefinition ifNil: [ ^ nil ].
  ^ self operation targetDefinition category