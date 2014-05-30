accessing
source
  self operation baseDefinition ifNil: [ ^ nil ].
  ^ self operation baseDefinition source