accessing
listKeystrokeCmdOKeyStroke
    "add a new method element for class"

    self list isEmpty
        ifFalse: [ ^ false ].
    self emptyTemplateElement ifNil: [ ^ false ].
    self topez
        editCodeElement: self emptyTemplateElement asTopezProxy
        label: 'Code'
        inWindow: (self topez windowIdNamed: #'methodSource')
        at: 'method'.
    ^ true