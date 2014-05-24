as yet unclassified
testDefinition01
  | clsTool definition x |
  clsTool := self tool.
  definition := clsTool clsdefinition: self mockClass.
  self
    assert:
      definition withGemstoneLineEndings
        = (x := self mockClassDefinition withGemstoneLineEndings)