client list element
elementNodeNames
  self process == nil
    ifTrue: [ ^ #() ].
  ^ self
    reorderElementNodeNames: self argAndTempNames , self instVarNames sorted
        , self syntheticFrameNames sorted