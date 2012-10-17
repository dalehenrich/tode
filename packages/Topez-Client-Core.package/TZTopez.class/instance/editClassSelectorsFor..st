editting
editClassSelectorsFor: proxyClassElement
    ^ self
        editClassSelectorsFor: proxyClassElement
        inWindow: (self windowIdNamed: #'classSelectors')
        at: 'classSelectors'