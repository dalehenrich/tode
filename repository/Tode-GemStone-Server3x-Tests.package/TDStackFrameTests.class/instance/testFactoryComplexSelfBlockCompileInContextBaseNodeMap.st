tests
testFactoryComplexSelfBlockCompileInContextBaseNodeMap
  | homeMethod blockFrame baseNodeMap x y is3106 |
  is3106 := (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
    <= '3.1.0.6' asMetacelloVersionNumber.
  [ 
  is3106
    ifTrue: [ 
      "in 3.1.0.6, cannot compile a string the uses `self` in an anonymous method using a nil compilationContext"
      (self factoryBlockCompile: '[self halt]' inContext: 1 evaluateIn: nil)
        value ]
    ifFalse: [ (self factoryBlockCompile: '[self halt]') value ] ]
    on: Halt
    do: [ :ex | 
      self
        createFramesinFork: [ :frame :nodeMap | 
          blockFrame := frame.
          baseNodeMap := nodeMap ]
        exception: ex ].
  is3106
    ifTrue: [ self assert: baseNodeMap size == 4 ]
    ifFalse: [ self assert: baseNodeMap size == 5 ].
  self assert: (baseNodeMap includesKey: '(context)').
  homeMethod := blockFrame
    objectFor: '(homeMethod)'
    ifAbsent: [ self assert: false ].
  self assert: homeMethod inClass isNil.
  self
    assert:
      (x := blockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        method == (y := self factoryBlock) method.	"it's complicated"
  is3106
    ifTrue: [ 
      self
        assert:
          (x := blockFrame objectFor: '(varContext)' ifAbsent: [ self assert: false ])
            class == VariableContext.
      self assert: (blockFrame argOrTempNamed: 'self') == nil ]
    ifFalse: [ 
      self
        assert:
          (x := blockFrame objectFor: '(varContext)' ifAbsent: [ self assert: false ])
            == nil.
      self
        assert:
          (x := blockFrame objectFor: '(self)' ifAbsent: [ self assert: false ]) == nil ]