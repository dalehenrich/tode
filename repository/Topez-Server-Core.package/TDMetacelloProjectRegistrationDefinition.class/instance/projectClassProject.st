accessing
projectClassProject
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ self projectSpec projectClassProject