as yet unclassified
sendersOf: clientSourceElement selectionInterval: selectionInterval
  "CMD-n - sendersOf"

  | meth selector defs |
  meth := self method.
  selector := (meth sourceString copyFrom: selectionInterval _from to: selectionInterval _to) findSelector.
  defs := Array new.
  (SystemNavigation default sendersOf: selector)
    do: [ :gsMethod | 
      defs
        add:
          (TDMethodDefinition
            className: gsMethod inClass theNonMetaClass name
            isMeta: gsMethod inClass isMeta
            selector: gsMethod selector) ].
  defs
    edit: nil
    topez: clientSourceElement topez
    aspect: #'methodDefinitionList'
    windowName: nil
    windowId: nil
    windowLocation: #'implementors'.
  ^ true