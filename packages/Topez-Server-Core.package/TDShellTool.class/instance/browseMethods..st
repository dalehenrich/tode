as yet unclassified
browseMethods: methodList
  | defs |
  defs := methodList
    collect: [ :meth | 
      TDMethodDefinition
        className: meth actualClass theNonMetaClass name
        isMeta: meth actualClass isMeta
        selector: meth selector ].
  ^ defs
    edit: nil
    topez: topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'