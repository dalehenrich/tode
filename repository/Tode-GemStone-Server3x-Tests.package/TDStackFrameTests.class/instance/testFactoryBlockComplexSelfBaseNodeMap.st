tests
testFactoryBlockComplexSelfBaseNodeMap
  | frames homeMethod blockFrame baseNodeMap x y |
  homeMethod := self blockFactory class
    compiledMethodAt: #'execBlockComplexSelf'.
  [ self factoryBlockComplexSelf value ]
    on: Halt
    do: [ :ex | frames := self createFrames ].
  blockFrame := frames first
    findFrameSuchThat: [ :frame | frame homeMethod == homeMethod ].
  baseNodeMap := blockFrame baseNodeMap.
  self assert: baseNodeMap size == 4.
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
        method == (y := self factoryBlock) method.	"it's complicated"
  self assert: (blockFrame argOrTempNamed: 'self') == self blockFactory.
  [ 
  | blockReturn |
  blockReturn := self factoryBlock value.
  self assert: blockReturn == (blockFrame argOrTempNamed: 'self') ]
    on: Halt
    do: [ :ex | ex resume ]