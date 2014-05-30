accessing
methodSourceCategory
  self operation baseDefinition ifNil: [ ^ nil ].
  ^ self operation baseDefinition category