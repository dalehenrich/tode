tests
testExecBlockComplexTempsBaseNodeMap
  | frames homeMethod blockFrame frameMap x block theContext |
  homeMethod := self compiledMethodAt: #'execBlockComplexTemps'.
  [ block := self execBlockComplexTemps.
  block value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame argAndTempNames size = 1.
  self assert: frameMap size == 2.
  self
    assert:
      (x := blockFrame argOrTempNamed: 'a' ifAbsent: [ self assert: false ]) == 1.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ]) == nil.
  self
    assert:
      (x := blockFrame objectFor: '(thisContext)' ifAbsent: [ self assert: false ])
        == theContext.
  frameMap := theContext syntheticFrameMap.
  self assert: frameMap size == 8.
  self
    assert:
      (x := theContext objectFor: '(closureOrNil)' ifAbsent: [ self assert: false ])
        == block.
  self
    assert:
      (x := theContext objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == homeMethod.
  self
    assert:
      (x := theContext objectFor: '(ipOffset)' ifAbsent: [ self assert: false ]) class
        == SmallInteger.
  self
    assert:
      (x := theContext objectFor: '(method)' ifAbsent: [ self assert: false ])
        == block method.
  self
    assert:
      (x := theContext objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := theContext objectFor: '(sender)' ifAbsent: [ self assert: false ]) class
        == blockFrame thisContextClass.
  self
    assert:
      (x := theContext objectFor: '(varContext)' ifAbsent: [ self assert: false ])
        class == VariableContext