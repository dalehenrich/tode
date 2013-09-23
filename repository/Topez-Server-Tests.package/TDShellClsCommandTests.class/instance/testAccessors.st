as yet unclassified
testAccessors
  | clsTool cls methods |
  clsTool := self tool.
  cls := self createMockClassVersion.
  methods := clsTool
    clsaccessors: cls
    setters: true
    getters: true
    argName: 'instanceVariable'
    protocol: 'accessing'.
  self assert: methods size = 2.
  methods
    do: [ :method | 
      self
        assert:
          (#(#'instanceVariable' #'instanceVariable:') includes: method selector) ]