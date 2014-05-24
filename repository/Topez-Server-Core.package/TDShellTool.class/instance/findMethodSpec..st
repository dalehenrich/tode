as yet unclassified
findMethodSpec: methodSpec
  | method methodRefs |
  method := self parseMethodSpec: methodSpec trimBoth.
  methodRefs := {(MethodReference
    class: method inClass
    selector: method selector)}.
  ^ self
    methodDefinitionsFor: methodRefs
    messagePattern: method selector
    isRegex: false