menu actions
setBreakpointMenuAction: sourceElement selectionInterval: selectionInterval dirty: dirty
  dirty
    ifTrue: [ ^ #'flash' ].
  self setBreakPoint: selectionInterval.
  ^ true