tests
testFactoryBlockCompileInObjectNewBaseNodeMap
  | homeMethod blockFrame baseNodeMap x y object |
  object := Object new.
  [ self evalFactoryBlockCompileInContext: object ]
    on: Halt
    do: [ :ex | 
      | stack process sem frames |
      process := GsProcess _current.
      sem := TransientSemaphore new.
      [ 
      stack := TDStack new
        process: process;
        exception: ex;
        createFrames;
        yourself.
      frames := stack frames.
      blockFrame := frames
        detect: [ :frame | frame printString = '[] in Executed Code' ].
      baseNodeMap := blockFrame baseNodeMap.
      sem signal ]
        fork.
      sem wait ].
  self assert: baseNodeMap size == 4.
  self assert: (baseNodeMap includesKey: '(context)').
  homeMethod := blockFrame
    objectFor: '(homeMethod)'
    ifAbsent: [ self assert: false ].
  self assert: homeMethod inClass isNil.
  self
    assert:
      (x := blockFrame objectFor: '(varContext)' ifAbsent: [ self assert: false ])
        class == VariableContext.
  self
    assert:
      (x := blockFrame objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        method == (y := self factoryBlockCompileInContext) method.	"it's complicated"
  self assert: (blockFrame argOrTempNamed: 'self') == object.
  [ 
  | blockReturn |
  blockReturn := self evalFactoryBlockCompileInContext: object.
  self assert: blockReturn == (blockFrame argOrTempNamed: 'self') ]
    on: Halt
    do: [ :ex | ex resume ]