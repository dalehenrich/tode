as yet unclassified
testAccessors01
  | clsTool cls methods |
  clsTool := self tool.
  cls := self createMockClassVersion.
  methods := clsTool clsaccessors: cls.
  self assert: methods size = 2.
  methods
    do: [ :method | 
      self
        assert:
          (#(#'instanceVariable' #'instanceVariable:') includes: method selector) ].
  self createMockSubClass.
  methods := self
    evaluateCommandString: 'cls accessors --class ' , self mockSubClassName.
  self assert: methods size = 4.
  methods
    do: [ :method | self assert: (#(#'civ1' #'civ1:' #'civ2' #'civ2:') includes: method selector) ].
  self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ].
  self createMockSubClass.
  methods := self
    evaluateCommandString:
      'cls accessors --class --setters ' , self mockSubClassName.
  self assert: methods size = 2.
  methods
    do: [ :method | self assert: (#(#'civ1:' #'civ2:') includes: method selector) ].
  self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ].
  self createMockSubClass.
  methods := self
    evaluateCommandString:
      'cls accessors --class --instance --setters ' , self mockSubClassName.
  self assert: methods size = 4.
  methods
    do: [ :method | self assert: (#(#'iv1:' #'iv2:' #'civ1:' #'civ2:') includes: method selector) ].
  self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ].
  self createMockSubClass.
  methods := self
    evaluateCommandString: 'cls accessors --getters ' , self mockSubClassName.
  self assert: methods size = 2.
  methods
    do: [ :method | self assert: (#(#'iv1' #'iv2') includes: method selector) ].
  self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ]