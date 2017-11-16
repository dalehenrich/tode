tests
testFactoryComplexSelfBlockCompileInContextBaseNodeMap
  | homeMethod blockFrame theContext frameMap nestedMap argsNTemps x block |
  (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
    <= '3.1.0.6' asMetacelloVersionNumber
    ifTrue: [ 
      "in 3.1.0.6, cannot compile a string the uses `self` in an anonymous method using a nil compilationContext"
      ^ self ].
  [ 
  block := self factoryBlockCompile: '[self halt]'.
  block value ]
    on: Halt
    do: [ :ex | 
      self
        createFramesinFork: [ :frame :map :nested :args :context | 
          blockFrame := frame.
          frameMap := map.
          nestedMap := nested.
          argsNTemps := args.
          theContext := context ]
        exception: ex ].
  self assert: nestedMap size = 0.
  self assert: argsNTemps size = 0.
  self assert: frameMap size == 2.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ]) == nil.
  self
    assert:
      (x := blockFrame objectFor: '(thisContext)' ifAbsent: [ self assert: false ])
        == theContext.
  self
    validateThisContext: theContext
    forAnonymousComplexBlockNoVarContext: block
    frame: blockFrame
    home: homeMethod