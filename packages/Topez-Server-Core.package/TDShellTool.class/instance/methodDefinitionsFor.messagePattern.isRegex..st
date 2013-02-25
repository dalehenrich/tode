as yet unclassified
methodDefinitionsFor: methodRefs messagePattern: messagePattern isRegex: isRegex
  ^ methodRefs
    collect: [ :meth | 
      TDMethodDefinition
        className: meth actualClass theNonMetaClass name
        isMeta: meth actualClass isMeta
        selector: meth selector
        messagePattern: messagePattern
        messagePatternIsRegex: false ]