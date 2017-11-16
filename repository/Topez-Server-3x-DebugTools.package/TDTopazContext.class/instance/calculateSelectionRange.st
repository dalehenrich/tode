private
calculateSelectionRange
  | method stepPoint begin end |
  method := self gsMethod.
  (method respondsTo: #'_stepPointForIp:level:isNative:')
    ifTrue: [ stepPoint := method
        perform: #'_stepPointForIp:level:isNative:'
        withArguments: {(self ipOffset).
          (self frameIndex).
          (self process _nativeStack)} ]
    ifFalse: [ "v3.3"
      stepPoint := method
        perform: #'_stepPointForIp:level:useNext:'
        withArguments: {(self ipOffset).
          (self frameIndex).
          (self process _nativeStack)} ].
  begin := method _sourceOffsetsAt: stepPoint.
  end := self calculateSourceRangeEnd: begin in: method sourceString.
  ^ begin to: end