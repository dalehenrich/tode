*topez-server-debugtools.v31
calculateSelectionRange
    | method stepPoint offsets begin end |
    method := self method.
    stepPoint := method _stepPointForIp: self ipOffset level: self frameIndex isNative: self process _nativeStack.
    offsets := method _sourceOffsets.
    begin := offsets at: (stepPoint min: offsets size).
    end := self calculateSourceRangeEnd: begin in: method sourceString.
    ^ begin to: end