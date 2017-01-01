client list element
elementNodeNames
  self process == nil
    ifTrue: [ ^ #() ].
  ^ self
    reorderElementNodeNames:
      self nestedArgAndTempVarNames sorted , self instVarNames sorted
        , self syntheticFrameNames sorted