command prompt
restoreSelectionMarker
  "Restore selection marker in MVC"

  | c |
  self isMorphic
    ifFalse: [ 
      c := self activeController.
      self scheduleToEvaluate: [ c initializeSelection ] ]