tests
testSimpleTemp
  | stack haltMethodFrame baseNodeMap tempFrame argAndTempNames x outermostBlock haltBlockFrame innermostBlock |
  outermostBlock := [ | temp |
  temp := 1.
  innermostBlock := [ self haltMethod ].
  innermostBlock value ].
  stack := self runTestBlockReturnStack: outermostBlock.
  haltMethodFrame := self findHaltMethodFrameFrom: stack.
  baseNodeMap := haltMethodFrame baseNodeMap.
  self assert: baseNodeMap size == 2.
  self assert: (baseNodeMap includesKey: '(context)').
  self assert: (baseNodeMap includesKey: '(self)').
  haltBlockFrame := haltMethodFrame next.
  baseNodeMap := haltBlockFrame baseNodeMap.
  argAndTempNames := haltBlockFrame argAndTempNames.
  self assert: baseNodeMap size == 3.
  self
    assert:
      (x := haltBlockFrame objectFor: '(home)' ifAbsent: [ self assert: false ])
        == (self class compiledMethodAt: #'testSimpleTemp').
  self
    assert:
      (x := haltBlockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == innermostBlock.
  self
    assert:
      (x := haltBlockFrame objectFor: '(context)' ifAbsent: [ self assert: false ])
        == innermostBlock method.
  self assert: argAndTempNames size == 3.
  self assert: (argAndTempNames at: 1) = 'self'.
  self assert: (argAndTempNames at: 2) = '.t1'.
  self assert: (argAndTempNames at: 3) = '.t2'.
  self assert: (x := haltBlockFrame argAndTempNamesAt: 1) = self.
  tempFrame := haltBlockFrame next.
  baseNodeMap := tempFrame baseNodeMap.
  argAndTempNames := tempFrame argAndTempNames.
  self assert: baseNodeMap size == 4.
  self assert: (baseNodeMap includesKey: '(context)').
  self
    assert:
      (x := tempFrame objectFor: '(home)' ifAbsent: [ self assert: false ])
        == (self class compiledMethodAt: #'testSimpleTemp').
  self
    assert:
      (x := tempFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == outermostBlock.
  self
    assert:
      (x := tempFrame objectFor: '(self)' ifAbsent: [ self assert: false ]) == self.
  self assert: argAndTempNames size == 3.
  self assert: (argAndTempNames at: 1) = 'temp'.
  self assert: (argAndTempNames at: 2) = 'innermostBlock'.
  self assert: (argAndTempNames at: 3) = '.t1'.
  self assert: (tempFrame argAndTempNamesAt: 1) = 1.
  self assert: (tempFrame argAndTempNamesAt: 2) == innermostBlock