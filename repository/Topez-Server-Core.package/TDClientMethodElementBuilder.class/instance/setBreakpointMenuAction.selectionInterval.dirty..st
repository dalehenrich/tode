menu actions
setBreakpointMenuAction: sourceElement selectionInterval: selectionInterval dirty: dirty
  dirty
    ifTrue: [ ^ #'flash' ].
  sourceElement getBlock value = self method sourceString
    ifFalse: [ 
      "breakpoint may not match sourceInterval"
      ^ #'refreshView' ].
  self setBreakPoint: sourceElement selectionInterval: selectionInterval.
  ^ true