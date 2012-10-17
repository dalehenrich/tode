editting
editClassSelectorsFor: proxyClassElement inWindow: windowIdOrNil at: windowLocation
    ^ self
        editList: (self classSelectors: proxyClassElement proxyClass)
        selection: nil
        parentElement: proxyClassElement
        label: proxyClassElement elementClassName asTopezNative , ' class'
        inWindow: windowIdOrNil
        at: windowLocation