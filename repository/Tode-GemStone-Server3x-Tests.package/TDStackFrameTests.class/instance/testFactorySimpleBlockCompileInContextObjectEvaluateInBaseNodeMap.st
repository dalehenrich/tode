tests
testFactorySimpleBlockCompileInContextObjectEvaluateInBaseNodeMap
  | homeMethod blockFrame baseNodeMap x y compileContext evalContext |
  compileContext := Object new.
  evalContext := Object new.
  [ 
  (self
    factoryBlockCompile: '[1 halt]'
    inContext: compileContext
    evaluateIn: evalContext) value ]
    on: Halt
    do: [ :ex | 
      self
        createFramesinFork: [ :frame :nodeMap | 
          blockFrame := frame.
          baseNodeMap := nodeMap ]
        exception: ex ].
  self assert: baseNodeMap size == 5.
  self assert: (baseNodeMap includesKey: '(context)').
  homeMethod := blockFrame
    objectFor: '(homeMethod)'
    ifAbsent: [ self assert: false ].
  self assert: homeMethod inClass isNil.
  self
    assert:
      (x := blockFrame objectFor: '(varContext)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := blockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        method == (y := self factoryBlock) method.	"it's complicated"
  self
    assert:
      (x := blockFrame objectFor: '(self)' ifAbsent: [ self assert: false ]) == nil