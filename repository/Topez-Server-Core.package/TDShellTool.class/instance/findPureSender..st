as yet unclassified
findPureSender: selectorToken
  "find [--scriptPath=<tode-path>] psender [#]<selector>"

  | selector methodRefs |
  self options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | ^ self findPureSender: selectorToken searchScriptRoot: scriptPath ].
  selector := self resolveSelector: selectorToken.
  methodRefs := ((Smalltalk systemNavigation classOrganizer
    sendersOf: selector asSymbol) at: 1)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false