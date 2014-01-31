as yet unclassified
findSender: selectorToken
  "find [--scriptPath=<tode-path>] sender [#]<selector>"

  | selector methodRefs |
  self options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | ^ self findSender: selectorToken searchScriptRoot: scriptPath ].
  selector := self resolveSelector: selectorToken.
  methodRefs := (Smalltalk systemNavigation newSendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false