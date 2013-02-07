as yet unclassified
browseMethods: methodList messagePattern: messagePattern isRegex: isRegex
  | defs |
  defs := methodList
    collect: [ :meth | 
      TDMethodDefinition
        className: meth actualClass theNonMetaClass name
        isMeta: meth actualClass isMeta
        selector: meth selector
        messagePattern: messagePattern
        messagePatternIsRegex: isRegex ].
  ^ defs
    edit: nil
    topez: topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'