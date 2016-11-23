tests
testReturnBlockNoSelf
  | stack block errorMethodFrame errorBlockFrame baseNodeMap argAndTempNames x |
  block := [ self returnBlockNoSelf ].
  stack := self runTestBlockReturnStack: block.
  errorMethodFrame := self findReturnBlockNoSelfFrameFrom: stack value.
  errorBlockFrame := errorMethodFrame previous.
  baseNodeMap := errorBlockFrame baseNodeMap.
  argAndTempNames := errorBlockFrame argAndTempNames.
  self assert: baseNodeMap size == 4.
  self assert: (baseNodeMap includesKey: '(context)').
  self assert: (x := errorBlockFrame
        objectFor: '(homeContext)'
        ifAbsent: [ self assert: false ])
        == (self class compiledMethodAt: #'returnBlockNoSelf').
  self
    assert:
      (x := errorBlockFrame objectFor: '(self)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := errorBlockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == self