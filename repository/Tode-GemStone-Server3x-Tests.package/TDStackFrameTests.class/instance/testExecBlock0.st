tests
testExecBlock0
  | frames homeMethod execBlock0Frame baseNodeMap argAndTempNames x |
  homeMethod := self class compiledMethodAt: #'execBlock0'.
  [ self blockValue0 ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  execBlock0Frame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  baseNodeMap := execBlock0Frame baseNodeMap.
  argAndTempNames := execBlock0Frame argAndTempNames.
  self assert: argAndTempNames isEmpty.
  self assert: baseNodeMap size == 5.
  self assert: (baseNodeMap includesKey: '(context)').
  self
    assert:
      (x := execBlock0Frame objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == (self class compiledMethodAt: #'execBlock0').
  self
    assert:
      (x := execBlock0Frame objectFor: '(varContext)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := execBlock0Frame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        class == ExecBlock0.
  self
    assert:
      (x := execBlock0Frame objectFor: '(self)' ifAbsent: [ self assert: false ])
        == nil