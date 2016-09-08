private
elementNodeNames
  self process == nil
    ifTrue: [ ^ #() ].
  ^ self baseNodeNames sorted , self argAndTempNames