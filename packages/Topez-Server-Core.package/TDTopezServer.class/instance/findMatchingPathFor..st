accessing
findMatchingPathFor: aPath
  | matches |
  matches := (self baseNodeFor: aPath) findMatchingPathFor: aPath with: self.
  matches size = 1
    ifTrue: [ ^ matches first ].
  ^ aPath