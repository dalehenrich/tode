client element
elementNodeNames
  self process == nil
    ifTrue: [ ^ #() ].
  ^ self argAndTempNames , self instVarNames sorted , self baseNodeNames sorted
    , self frameNames