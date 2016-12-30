private
calculateSelectionRange
  | method stepPoint begin end |
  method := self gsMethod.
  stepPoint := method
    _stepPointForIp: self ipOffset
    level: self frameIndex
    useNext: self process _nativeStack.
  begin := method _sourceOffsetsAt: stepPoint.
  end := self calculateSourceRangeEnd: begin in: method sourceString.
  ^ begin to: end