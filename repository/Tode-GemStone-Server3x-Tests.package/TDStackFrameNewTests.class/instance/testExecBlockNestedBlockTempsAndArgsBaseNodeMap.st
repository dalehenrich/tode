tests
testExecBlockNestedBlockTempsAndArgsBaseNodeMap
  | frames homeMethod blockFrame theContext frameMap x block |
  homeMethod := self compiledMethodAt: #'execBlockNestedBlockTempsAndArgs:'.
  [ block := self execBlockNestedBlockTempsAndArgs: 3.
  block value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame nestedArgAndTempVarNamesMap size = 3.
  self assert: blockFrame argAndTempNames size = 1.
  self assert: frameMap size == 2.
  self
    assert:
      (x := blockFrame nestedArgOrTempNamed: 'arg1' ifAbsent: [ self assert: false ])
        == blockFrame class noValueMarker.
  self
    assert:
      (x := blockFrame nestedArgOrTempNamed: 'a' ifAbsent: [ self assert: false ])
        == 1.
  self
    assert:
      (x := blockFrame nestedArgOrTempNamed: 'b' ifAbsent: [ self assert: false ])
        == 2.
  self
    assert:
      (x := blockFrame nestedArgOrTempNamed: 'c' ifAbsent: [ self assert: false ])
        == 3.
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
      (x := theContext objectFor: 'self' ifAbsent: [ self assert: false ]) == nil.
  self
    assert:
      (x := theContext objectFor: '(closureOrNil)' ifAbsent: [ self assert: false ])
        class == ExecBlock0.
  self
    assert:
      (x := theContext objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == homeMethod.
  self
    assert:
      (x := theContext objectFor: '(method)' ifAbsent: [ self assert: false ]) class
        == GsNMethod.
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