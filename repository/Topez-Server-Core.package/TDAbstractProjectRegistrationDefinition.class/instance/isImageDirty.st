testing
isImageDirty
  self isLoadedInImage
    ifFalse: [ ^ false ].
  self workingCopies detect: [ :wc | wc modified ] ifNone: [ ^ false ].
  ^ true