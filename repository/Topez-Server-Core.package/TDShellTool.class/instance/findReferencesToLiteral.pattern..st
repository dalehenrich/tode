as yet unclassified
findReferencesToLiteral: literal pattern: pattern
  | methodRefs |
  methodRefs := TDMethodDefinition rawLiteralReference: literal in: nil.
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: pattern
    isRegex: false