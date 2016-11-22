tests
testSimpleStack
  | stack haltMethod haltMethodFrame x argAndTempNames |
  stack := self runTestBlockReturnStack: [ self haltMethod ].
  haltMethodFrame := self findHaltMethodFrameFrom: stack.
  argAndTempNames := haltMethodFrame argAndTempNames.
  self assert: argAndTempNames size == 1.
  self assert: (argAndTempNames at: 1) = '.t1'.
  self assert: (x := haltMethodFrame argAndTempNamesAt: 1) == self.
  haltMethod := self theHaltMethod.
  self
    assert:
      (x := haltMethodFrame objectFor: '(context)' ifAbsent: [ self assert: false ])
        == haltMethod.
  self
    assert:
      (x := haltMethodFrame objectFor: '(self)' ifAbsent: [ self assert: false ])
        == self