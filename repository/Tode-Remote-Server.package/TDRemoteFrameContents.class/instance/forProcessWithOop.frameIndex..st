initialization
forProcessWithOop: processOop frameIndex: frameIndex
  | process fc method inClass frameSelf rawReceiver receiver homeMethod |
  process := Object _objectForOop: processOop.
  fc := process _frameContentsAt: frameIndex.
  method := fc at: 1.
  methodOop := method asOop.
  ipOffset := fc at: 2.
  stepPoint := method
    _stepPointForIp: ipOffset
    level: frameIndex
    useNext: process _nativeStack.
  sourceOffsetAtStepPoint := method _sourceOffsetsAt: stepPoint.
  inClass := method inClass.
  inClass
    ifNotNil: [ :cl | 
      inClassName := cl name asString.
      inClassOop := inClass asOop ].
  frameSelf := fc at: 8.
  frameSelfOop := frameSelf asOop.
  frameSelfClassOop := frameSelf class asOop.
  frameSelfClassName := frameSelf class name.
  rawReceiver := fc at: 10.
  rawReceiverOop := rawReceiver asOop.
  receiver := frameSelf ifNil: [ rawReceiver ].
  receiverOop := receiver asOop.
  argAndTempNames := fc at: 9.
  homeMethod := method homeMethod.
  homeMethodOop := homeMethodOop.
  homeMethodSourceString := homeMethod sourceString.
  sourceString := method sourceString.
  selector := homeMethod selector.
  isMethodForBlock := method isMethodForBlock