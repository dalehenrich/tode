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
          (#(#'instanceVariable' #'instanceVariable:') includes: method selector) ]