accessing
configurationClassName
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ self projectSpec className