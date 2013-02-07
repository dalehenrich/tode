as yet unclassified
sendersOf: clientSourceElement selectionInterval: selectionInterval
  "CMD-n - sendersOf"

  | gsMethod selector defs |
  gsMethod := self method.
  selector := (gsMethod sourceString copyFrom: selectionInterval _from to: selectionInterval _to) findSelector.
  defs := (SystemNavigation default sendersOf: selector)
    collect: [ :gsMethod | 
      TDMethodDefinition
        className: gsMethod inClass theNonMetaClass name
        isMeta: gsMethod inClass isMeta
        selector: gsMethod selector ].
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'definitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true