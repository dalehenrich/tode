private
calculateSelectionRange
  | method stepPoint begin end |
  method := self method.
  stepPoint := self stepPoint.
  begin := method _sourceOffsetsAt: stepPoint.
  end := self calculateSourceRangeEnd: begin in: method sourceString.
  ^ begin to: end