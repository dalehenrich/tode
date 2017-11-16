private
elementNodeNames
  self processOop == nil
    ifTrue: [ ^ #() ].
  ^ self baseNodeNames sorted , self argAndTempNames