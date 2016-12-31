tests
testFactoryComplexSelfBlockCompileInContextObjectEvaluateInNilBaseNodeMap
  | homeMethod blockFrame theContext frameMap nestedMap argsNTemps x block compileContext evalContext |
  compileContext := Object new.
  evalContext := nil.
  [ block := self
    factoryBlockCompile: '[self halt]'
    inContext: compileContext
    evaluateIn: evalContext.
  block value ]
    on: Halt
    do: [ :ex | self
        createFramesinFork: [ :frame :map :nested :args :context | blockFrame := frame.
          frameMap := map.
          nestedMap := nested.
          argsNTemps := args.
          theContext := context ]
        exception: ex ].
  self assert: nestedMap size = 0.
  self assert: argsNTemps size = 1.
  self assert: frameMap size == 1.
  self
    assert:
      (x := blockFrame objectFor: 'self' ifAbsent: [ self assert: false ])
        == evalContext.
  self
    assert:
      (x := blockFrame objectFor: '(thisContext)' ifAbsent: [ self assert: false ])
        == theContext.
  self
    validateThisContext: theContext
    forAnonymousComplexBlockNoSelf: block
    frame: blockFrame
    home: homeMethod