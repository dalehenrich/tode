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
  homeMethod := method homeMethod.
  selector := homeMethod selector.
  methodProtocol := 'as yet unclassified'.
  allSharedPoolNames := allInstVarNames := #().
  inClass
    ifNotNil: [ :cl | 
      inClassName := cl name asString.
      inClassOop := inClass asOop.
      (inClass categoryOfSelector: selector asSymbol)
        ifNotNil: [ :protocol | methodProtocol := protocol ].
      allInstVarNames := inClass allInstVarNames.
      allSharedPoolNames := IdentitySet new.
      inClass allSharedPools
        do: [ :poolDict | allSharedPoolNames addAll: poolDict keys ] ].
  frameSelf := fc at: 8.
  frameSelfOop := frameSelf asOop.
  frameSelfClassOop := frameSelf class asOop.
  frameSelfClassName := frameSelf class name.
  rawReceiver := fc at: 10.
  rawReceiverOop := rawReceiver asOop.
  receiver := frameSelf ifNil: [ rawReceiver ].
  receiverOop := receiver asOop.
  argAndTempNames := fc at: 9.
  argAndTempOops := {}.
  1 to: argAndTempNames size do: [ :i | argAndTempOops add: (fc at: 10 + i) asOop ].
  homeMethodOop := homeMethodOop.
  homeMethodSourceString := homeMethod sourceString.
  sourceString := method sourceString.
  isMethodForBlock := method isMethodForBlock