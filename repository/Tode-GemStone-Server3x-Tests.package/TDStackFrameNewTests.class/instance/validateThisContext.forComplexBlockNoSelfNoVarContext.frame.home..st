private
validateThisContext: theContext forComplexBlockNoSelfNoVarContext: aBlock frame: blockFrame home: homeMethod
  | frameMap x |
  frameMap := theContext syntheticFrameMap.
  self assert: frameMap size == 7.
  self
    assert:
      (x := theContext objectFor: '(closureOrNil)' ifAbsent: [ self assert: false ])
        class == aBlock class.
  self
    assert:
      (x := theContext objectFor: '(homeMethod)' ifAbsent: [ self assert: false ])
        == homeMethod.
  self
    assert:
      (x := theContext objectFor: '(ipOffset)' ifAbsent: [ self assert: false ]) class
        == SmallInteger.
  self
    assert:
      (x := theContext objectFor: '(method)' ifAbsent: [ self assert: false ]) class
        == GsNMethod.
  self
    assert:
      (x := theContext objectFor: '(receiver)' ifAbsent: [ self assert: false ])
        == nil.
  self
    assert:
      (x := theContext objectFor: '(sender)' ifAbsent: [ self assert: false ]) class
        == blockFrame thisContextClass