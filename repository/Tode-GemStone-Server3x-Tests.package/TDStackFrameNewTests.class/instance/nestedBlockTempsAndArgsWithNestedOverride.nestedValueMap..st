private
nestedBlockTempsAndArgsWithNestedOverride: selector nestedValueMap: nestedValueMap
  | frames homeMethod blockFrame theContext frameMap x |
  homeMethod := self compiledMethodAt: selector.
  [ self perform: selector with: 3 ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame nestedArgAndTempVarNamesMap size = nestedValueMap size.
  self assert: blockFrame argAndTempNames size = 1.
  self assert: frameMap size == 2.
  nestedValueMap keysAndValuesDo: [ :key :value | self
        assert:
          (x := blockFrame nestedArgOrTempNamed: key ifAbsent: [ self assert: false ])
            == value ].
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
    validateThisContextWithHomeContext: theContext
    frame: blockFrame
    home: homeMethod