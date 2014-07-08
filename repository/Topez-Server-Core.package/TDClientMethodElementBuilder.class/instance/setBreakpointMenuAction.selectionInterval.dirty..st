menu actions
setBreakpointMenuAction: sourceElement selectionInterval: selectionInterval dirty: dirty
  dirty
    ifTrue: [ ^ #'flash' ].
  sourceElement getBlock value = self method sourceString
    ifFalse: [ 
      "breakpoint may not match sourceInterval"
      self
        confirm:
          'The formatted method source does not match the method source and breakpoint may be placed in the wrong position. Press OKAY to spawn a window using unformatted source.'.
      ^ #'refreshView' ].
  self setBreakPoint: sourceElement selectionInterval: selectionInterval.
  ^ true