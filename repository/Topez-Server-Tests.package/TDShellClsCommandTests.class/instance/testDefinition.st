as yet unclassified
testDefinition
  | clsTool clsName definition x |
  clsTool := self tool.
  clsName := self mockClassName.
  definition := clsTool clsdefinition: clsName.
  self
    assert:
      definition withGemstoneLineEndings
        = (x := self mockClassDefinition withGemstoneLineEndings)