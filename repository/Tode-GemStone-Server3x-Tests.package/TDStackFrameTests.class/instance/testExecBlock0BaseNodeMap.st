tests
testExecBlock0BaseNodeMap
  | frames homeMethod blockFrame baseNodeMap x |
  homeMethod := self class compiledMethodAt: #'execBlock0'.
  [ self evalExecBlock0 ]
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
        == nil.
  self
    assert:
      (x := blockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == self execBlock0.
  self
    assert:
      (x := blockFrame objectFor: '(self)' ifAbsent: [ self assert: false ]) == nil