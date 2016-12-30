tests
testExecBlockComplexScopedTempsAndArgsBaseNodeMap
  | frames homeMethod blockFrame baseNodeMap x block |
  homeMethod := self compiledMethodAt: #'execBlockComplexScopedTempsAndArgs:'.
  [ block := self execBlockComplexScopedTempsAndArgs: 3.
  block value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  baseNodeMap := blockFrame baseNodeMap.
  self assert: blockFrame argAndTempNames size = 2.
  self assert: baseNodeMap size == 6.
  self
    assert:
      (x := blockFrame argOrTempNamed: 'args1' ifAbsent: [ self assert: false ]) == 1.
  self
    assert:
      (x := blockFrame argOrTempNamed: 'a' ifAbsent: [ self assert: false ]) == 1.
  self
    assert:
      (x := blockFrame argOrTempNamed: 'b' ifAbsent: [ self assert: false ]) == 2.
  self
    assert:
      (x := blockFrame argOrTempNamed: 'c' ifAbsent: [ self assert: false ]) == 2.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ]) == nil.
  self
    assert:
      (x := blockFrame objectFor: '(closureOrNil)' ifAbsent: [ self assert: false ])
        == block.
  self
    assert:
      (x := blockFrame objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == homeMethod.
  self
    assert:
      (x := blockFrame objectFor: '(method)' ifAbsent: [ self assert: false ])
        == block method.
  self
    assert:
      (x := blockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := blockFrame objectFor: '(sender)' ifAbsent: [ self assert: false ])
        == blockFrame next