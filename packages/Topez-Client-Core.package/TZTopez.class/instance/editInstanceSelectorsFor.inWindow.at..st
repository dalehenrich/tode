editting
editInstanceSelectorsFor: classProxy inWindow: windowIdOrNil at: windowLocation
    | templateElementProxy |
    templateElementProxy := self methodTemplateElementFor: classProxy isMeta: false.
    ^ self
        editList: (self instanceSelectors: classProxy asTopezProxy)
        selection: nil
        templateElement: templateElementProxy asTopezProxy
        label: classProxy asTopezProxy proxyPrintString asTopezNative
        inWindow: (self windowIdNamed: #'instanceSelectors')
        at: 'instanceSelectors'