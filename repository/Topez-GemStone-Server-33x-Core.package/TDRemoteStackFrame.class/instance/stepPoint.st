private
stepPoint
  ^ (self dynamicInstVarAt: #'rawReceiverOop')
    ifNil: [ 
      | method stepPoint begin end |
      method := self method.
      stepPoint := method
        perform: #'_stepPointForIp:level:useNext:'
        withArguments:
          {(self ipOffset).
          (self frameIndex).
          (self _nativeStack)}.
      self dynamicInstVarAt: #'stepPoint' put: stepPoint ]