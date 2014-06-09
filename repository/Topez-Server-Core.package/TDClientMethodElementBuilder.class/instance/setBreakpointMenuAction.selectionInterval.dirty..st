menu actions
setBreakpointMenuAction: sourceElement selectionInterval: selectionInterval dirty: dirty
  dirty
    ifTrue: [ ^ #'flash' ].
  self setBreakPoint: sourceElement selectionInterval: selectionInterval.
  ^ true