as yet unclassified
findReferencesToLiteral: literal inClass: cls pattern: pattern
  | methodRefs |
  methodRefs := TDMethodDefinition rawLiteralReference: literal in: cls.
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: pattern
    isRegex: false