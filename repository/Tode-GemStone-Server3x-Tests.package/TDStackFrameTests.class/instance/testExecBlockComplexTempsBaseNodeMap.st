tests
testExecBlockComplexTempsBaseNodeMap
  | frames homeMethod blockFrame baseNodeMap x block |
  homeMethod := self class compiledMethodAt: #'execBlockComplexTemps'.
  [ 
  block := self execBlockComplexTemps.
  block value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  baseNodeMap := blockFrame baseNodeMap.
  self assert: baseNodeMap size == 5.
  self assert: (baseNodeMap includesKey: '(context)').
  self
    assert:
      (x := blockFrame objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == homeMethod.
  self
    assert:
      (x := blockFrame objectFor: '(varContext)' ifAbsent: [ self assert: false ])
        class == VariableContext.
  self
    assert:
      (x := blockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == block.
  self
    assert:
      (x := blockFrame objectFor: '(self)' ifAbsent: [ self assert: false ]) == nil