tests
testNestedBlockTempsAndArgsWithComplexOverride
  | frames homeMethod blockFrame theContext frameMap x nestedValueMap selector |
  nestedValueMap := Dictionary new
    at: 'a' put: 1;
    at: 'arg1' put: 3;
    at: 'b' put: 2;
    at: 'block' put: nil;
    at: 'c' put: 13;
    at: 'd' put: TDTodeExpandedContext noValueMarker;
    at: 'index' put: 3;
    at: 'f' put: 3;
    yourself.
  selector := #'nestedBlockTempsAndArgsWithComplexOverride:'.
  homeMethod := self compiledMethodAt: selector.
  [ self perform: selector with: 3 ]
    on: Halt
    do: [ :ex | self halt.
      frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  theContext := blockFrame thisContext.
  frameMap := blockFrame syntheticFrameMap.
  self assert: blockFrame nestedArgAndTempVarNamesMap size = nestedValueMap size.
  self assert: blockFrame argAndTempNames size = 2.
  self assert: frameMap size == 1.
  nestedValueMap keysAndValuesDo: [ :key :value | self
        assert:
          (x := blockFrame nestedArgOrTempNamed: key ifAbsent: [ self assert: false ])
            == value ].
  self
    assert:
      (x := blockFrame argOrTempNamed: 'e' ifAbsent: [ self assert: false ]) == 1.
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