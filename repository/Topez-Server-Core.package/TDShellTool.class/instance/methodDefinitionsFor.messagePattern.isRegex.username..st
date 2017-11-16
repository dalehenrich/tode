as yet unclassified
methodDefinitionsFor: methodRefs messagePattern: messagePattern isRegex: isRegex username: username
  ^ (methodRefs select: [ :meth | meth actualClass notNil ])
    collect: [ :meth | 
      (TDMethodDefinition
        className: meth actualClass theNonMetaClass name
        isMeta: meth actualClass isMeta
        selector: meth selector
        messagePattern: messagePattern
        messagePatternIsRegex: false)
        username: username;
        yourself ]