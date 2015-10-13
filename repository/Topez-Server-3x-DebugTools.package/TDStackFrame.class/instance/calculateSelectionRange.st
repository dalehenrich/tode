as yet unclassified
calculateSelectionRange
  | method stepPoint offsets begin end |
  method := self method.
  (method respondsTo: #'_stepPointForIp:level:isNative:')
    ifTrue: [ 
      stepPoint := method
        _stepPointForIp: self ipOffset
        level: self frameIndex
        isNative: self process _nativeStack ]
    ifFalse: [ 
      "v3.3"
      stepPoint := method
        _stepPointForIp: self ipOffset
        level: self frameIndex
        useNext: self process _nativeStack ].
  offsets := method _sourceOffsets.
  begin := offsets at: (stepPoint min: offsets size).
  end := self calculateSourceRangeEnd: begin in: method sourceString.
  ^ begin to: end