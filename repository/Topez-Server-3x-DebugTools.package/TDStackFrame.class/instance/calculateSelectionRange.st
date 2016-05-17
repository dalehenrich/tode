as yet unclassified
calculateSelectionRange
  | method stepPoint offsets begin end |
  method := self method.
  (method respondsTo: #'_stepPointForIp:level:isNative:')
    ifTrue: [ 
      stepPoint := method gsMethod
        perform: #'_stepPointForIp:level:isNative:'
        withArguments:
          {(self ipOffset).
          (self frameIndex).
          (self process _nativeStack)} ]
    ifFalse: [ 
      "v3.3"
      stepPoint := method
        perform: #'_stepPointForIp:level:useNext:'
        withArguments:
          {(self ipOffset).
          (self frameIndex).
          (self process _nativeStack)} ].
  offsets := method _sourceOffsets.
  begin := offsets at: (stepPoint min: offsets size).
  end := self calculateSourceRangeEnd: begin in: method sourceString.
  ^ begin to: end