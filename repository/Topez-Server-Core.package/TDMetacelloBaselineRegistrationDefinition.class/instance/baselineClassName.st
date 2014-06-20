accessing
baselineClassName
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ self projectSpec className