editting
editClassSelectorsFor: classProxy inWindow: windowIdOrNil at: windowLocation
    | templateElementProxy |
    templateElementProxy := self methodTemplateElementFor: classProxy isMeta: true.
    ^ self
        editList: (self classSelectors: classProxy asTopezProxy)
        selection: nil
        templateElement: templateElementProxy asTopezProxy
        label: classProxy asTopezProxy proxyPrintString asTopezNative , ' class'
        inWindow: windowIdOrNil
        at: windowLocation