as yet unclassified
findRegexSender: regexPattern
  "find [--scriptPath=<tode-path>] rsender <regex-pattern>"

  | regex methodRefs |
  self options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | ^ self findRegexSender: regexPattern searchScriptRoot: scriptPath ].
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  methodRefs := (Smalltalk systemNavigation regexSendersOf: regex)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: regexPattern
    isRegex: true