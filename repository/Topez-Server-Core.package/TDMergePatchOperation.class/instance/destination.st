accessing
destination
  self operation targetDefinition ifNil: [ ^ nil ].
  ^ self operation targetDefinition source