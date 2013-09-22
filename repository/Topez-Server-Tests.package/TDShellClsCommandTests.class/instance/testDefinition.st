as yet unclassified
testDefinition
  | clsTool definition x |
  clsTool := self tool.
  definition := clsTool clsdefinition: self mockClass.
  self
    assert:
      definition withGemstoneLineEndings
        = (x := self mockClassDefinition withGemstoneLineEndings)