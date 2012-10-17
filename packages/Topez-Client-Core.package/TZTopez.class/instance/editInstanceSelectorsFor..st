editting
editInstanceSelectorsFor: proxyClass
    ^ self
        editInstanceSelectorsFor: proxyClass
        inWindow: (self windowIdNamed: #'instanceSelectors')
        at: 'instanceSelectors'