accessing
configurationClassName
  self isConfigurationBased
    ifFalse: [ ^ nil ].
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ self projectSpec className