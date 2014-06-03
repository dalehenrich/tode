accessing
projectClassProject
  self projectClass ifNil: [ ^ nil ].
  ^ self projectSpec projectClassProject