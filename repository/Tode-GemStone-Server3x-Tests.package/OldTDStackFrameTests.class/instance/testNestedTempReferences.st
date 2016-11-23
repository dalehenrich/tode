tests
testNestedTempReferences
  | stack haltMethodFrame baseNodeMap argAndTempNames x block haltMethodCallFrame nestedBlockFrame |
  block := [ self nestedBlockMethodWithArgs: 1 b: 2 ].
  stack := self runTestBlockReturnStack: block.
  haltMethodFrame := self findHaltMethodFrameFrom: stack value.
  haltMethodCallFrame := haltMethodFrame next.
  baseNodeMap := haltMethodCallFrame baseNodeMap.
  argAndTempNames := haltMethodCallFrame argAndTempNames.
  self assert: baseNodeMap size == 2.
  self assert: (baseNodeMap includesKey: '(context)').
  self assert: (baseNodeMap includesKey: '(homeContext)').
  self assert: (x := haltMethodCallFrame
        objectFor: '(homeContext)'
        ifAbsent: [ self assert: false ])
        == (self class compiledMethodAt: #'nestedBlockMethodWithArgs:b:').
  self assert: argAndTempNames size == 5.
  self assert: (argAndTempNames at: 1) = 'temp3'.
  self assert: (argAndTempNames at: 2) = 'self'.
  self assert: (argAndTempNames at: 3) = 'a'.
  self assert: (argAndTempNames at: 4) = 'temp1'.
  self assert: (argAndTempNames at: 5) = '.t1'.
  self assert: (x := haltMethodCallFrame argAndTempNamesAt: 1) == 2.
  self assert: (x := haltMethodCallFrame argAndTempNamesAt: 2) == self.
  self assert: (x := haltMethodCallFrame argAndTempNamesAt: 3) == 1.
  self assert: (x := haltMethodCallFrame argAndTempNamesAt: 4) == 1.
  nestedBlockFrame := haltMethodCallFrame next.
  baseNodeMap := nestedBlockFrame baseNodeMap.
  argAndTempNames := nestedBlockFrame argAndTempNames.
  self assert: baseNodeMap size == 2.
  self
    assert:
      (x := nestedBlockFrame objectFor: '(self)' ifAbsent: [ self assert: false ])
        == self.
  self
    assert:
      (x := nestedBlockFrame objectFor: '(context)' ifAbsent: [ self assert: false ])
        == (self class compiledMethodAt: #'nestedBlockMethodWithArgs:b:').
  self assert: argAndTempNames size == 5.
  self assert: (argAndTempNames at: 1) = 'a'.
  self assert: (argAndTempNames at: 2) = 'b'.
  self assert: (argAndTempNames at: 3) = 'temp1'.
  self assert: (argAndTempNames at: 4) = 'temp2'.
  self assert: (argAndTempNames at: 5) = '.t1'.
  self assert: (x := nestedBlockFrame argAndTempNamesAt: 1) == 1.
  self assert: (x := nestedBlockFrame argAndTempNamesAt: 2) == 2.
  self assert: (x := nestedBlockFrame argAndTempNamesAt: 3) == 1.
  self assert: (x := nestedBlockFrame argAndTempNamesAt: 4) == 2