editting
editInstanceSelectorsFor: proxyClassElement inWindow: windowIdOrNil at: windowLocation
    ^ self
        editList: (self instanceSelectors: proxyClassElement proxyClass)
        selection: nil
        parentElement: proxyClassElement
        label: proxyClassElement elementClassName asTopezNative
        inWindow: (self windowIdNamed: #'instanceSelectors')
        at: 'instanceSelectors'