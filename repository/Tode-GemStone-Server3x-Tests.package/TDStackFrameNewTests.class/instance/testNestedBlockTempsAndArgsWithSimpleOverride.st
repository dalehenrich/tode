tests
testNestedBlockTempsAndArgsWithSimpleOverride
  | frames homeMethod blockFrame theContext frameMap x |
  homeMethod := self
    compiledMethodAt: #'nestedBlockTempsAndArgsWithSimpleOverride:'.
  [ self nestedBlockTempsAndArgsWithSimpleOverride: 3 ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame nestedArgAndTempVarNamesMap size = 2.
  self assert: blockFrame argAndTempNames size = 2.
  self assert: frameMap size == 2.
  self
    assert:
      (x := blockFrame nestedArgOrTempNamed: 'arg1' ifAbsent: [ self assert: false ])
        == 3.
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
        == 4.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ]) == nil.
  self
    assert:
      (x := blockFrame objectFor: '(thisContext)' ifAbsent: [ self assert: false ])
        == theContext.
  self
    validateThisContextWithHomeContext: theContext
    frame: blockFrame
    home: homeMethod