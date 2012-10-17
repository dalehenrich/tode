editting
editInstanceSelectorsFor: proxyClassElement
    ^ self
        editInstanceSelectorsFor: proxyClassElement
        inWindow: (self windowIdNamed: #'instanceSelectors')
        at: 'instanceSelectors'