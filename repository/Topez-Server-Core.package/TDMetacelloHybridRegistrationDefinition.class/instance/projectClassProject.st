accessing
projectClassProject
  "not sure"

  self halt.
  self projectClass ifNil: [ ^ nil ].
  ^ self projectSpec projectClassProject