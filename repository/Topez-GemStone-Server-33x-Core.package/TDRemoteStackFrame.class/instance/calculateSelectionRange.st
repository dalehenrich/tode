private
calculateSelectionRange
  | frameDict begin end |
  frameDict := self frameDict.
  begin := frameDict at: 'sourceOffsetAtStepPoint'.
  end := self calculateSourceRangeEnd: begin in: (frameDict at: 'sourceString').
  ^ begin to: end