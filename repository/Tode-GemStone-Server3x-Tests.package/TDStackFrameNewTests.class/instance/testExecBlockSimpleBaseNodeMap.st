tests
testExecBlockSimpleBaseNodeMap
  | frames homeMethod blockFrame theContext frameMap x |
  homeMethod := self compiledMethodAt: #'execBlockSimple'.
  [ self execBlockSimple value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame nestedArgAndTempVarNamesMap size = 1.
  self assert: blockFrame argAndTempNames isEmpty.
  self assert: frameMap size == 2.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ]) == nil.
  self
    assert:
      (x := blockFrame objectFor: 'block1' ifAbsent: [ self assert: false ])
        == blockFrame class noValueMarker.
  self
    assert:
      (x := blockFrame objectFor: '(thisContext)' ifAbsent: [ self assert: false ])
        == theContext.
  frameMap := theContext syntheticFrameMap.
  self assert: frameMap size == 7.
  self
    assert:
      (x := theContext objectFor: '(closureOrNil)' ifAbsent: [ self assert: false ])
        == self execBlockSimple.
  self
    assert:
      (x := theContext objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == homeMethod.
  self
    assert:
      (x := theContext objectFor: '(method)' ifAbsent: [ self assert: false ])
        == self execBlockSimple method.
  self
    assert:
      (x := theContext objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := theContext objectFor: '(ipOffset)' ifAbsent: [ self assert: false ]) class
        == SmallInteger.
  self
    assert:
      (x := theContext objectFor: '(sender)' ifAbsent: [ self assert: false ]) class
        == blockFrame thisContextClass