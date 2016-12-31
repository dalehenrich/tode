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
  self
    validateThisContext: theContext
    forSimpleBlock: self execBlockSimple
    frame: blockFrame
    home: homeMethod