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
  self assert: blockFrame nestedArgAndTempVarNamesMap size = 0.
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
  self
    validateThisContext: theContext
    forComplexBlock: block
    frame: blockFrame
    home: homeMethod