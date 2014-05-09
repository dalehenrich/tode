testing
isDirty
  self workingCopies detect: [ :wc | wc modified ] ifNone: [ ^ false ].
  ^ true