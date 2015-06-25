menu actions
setBreakpointMenuAction: sourceElement selectionInterval: selectionInterval dirty: dirty
  dirty
    ifTrue: [ ^ #'flash' ].
  (self
    compareElementSource: sourceElement getBlock value
    toMethod: self method sourceString)
    ifFalse: [ 
      | spawnedElement |
      "breakpoint may not match sourceInterval"
      (self
        confirm:
          'The formatted method source does not match the method source and breakpoint may be placed in the wrong position. Press OKAY to spawn a window using unformatted source.')
        ifFalse: [ ^ false ].
      [ 
      self formatOnDisplay: true.
      sourceElement spawnCopyBlock: self spawnCopyBlock.
      spawnedElement := sourceElement copyForSpawn ]
        ensure: [ self formatOnDisplay: nil ].
      ^ STON
        toUTF8EncodedString:
          {#'spawnWindow:'.
          spawnedElement} ].
  self setBreakPoint: sourceElement selectionInterval: selectionInterval.
  ^ true