tests
testExecBlockComplexSelfBaseNodeMap
  | frames homeMethod blockFrame theContext frameMap x block |
  homeMethod := self compiledMethodAt: #'execBlockComplexSelf'.
  [ block := self execBlockComplexSelf.
  block value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame nestedArgAndTempVarNamesMap size = 1.
  self assert: blockFrame argAndTempNames size = 1.
  self assert: frameMap size == 1.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ]) == self.
  self
    assert:
      (x := blockFrame objectFor: '(thisContext)' ifAbsent: [ self assert: false ])
        == theContext.
  self
    validateThisContext: theContext
    forComplexBlockNoSelf: block
    frame: blockFrame
    home: homeMethod