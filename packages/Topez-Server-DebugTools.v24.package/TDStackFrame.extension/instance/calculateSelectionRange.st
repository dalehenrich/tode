*topez-server-debugtools.v24
calculateSelectionRange
    | method stepPoint offsets begin end |
    method := self method.
    stepPoint := method _stepPointForIp: self ipOffset level: self
frameIndex quick: false.
    offsets := method _sourceOffsets.
    begin := offsets at: (stepPoint min: offsets size).
    end := self calculateSourceRangeEnd: begin in: method sourceString.
    ^ begin to: end
