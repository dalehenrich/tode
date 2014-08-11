testing
isImageDirty
  isImageDirty
    ifNil: [ 
      self isLoadedInImage
        ifFalse: [ ^ isImageDirty := false ].
      self workingCopies
        detect: [ :wc | wc modified ]
        ifNone: [ ^ isImageDirty := false ].
      ^ isImageDirty := true ].
  ^ isImageDirty