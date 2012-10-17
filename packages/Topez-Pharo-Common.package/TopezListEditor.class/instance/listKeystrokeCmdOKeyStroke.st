accessing
listKeystrokeCmdOKeyStroke
    "add a new method element for class"

    | methodElement |
    self list isEmpty
        ifFalse: [ ^ false ].
    self parentElement ifNil: [ ^ false ].
    methodElement := TZMethodElement new
        proxyClass: self parentElement proxyClass;
        proxyClassName: self parentElement elementClassName;
        selector: #'newMethodTemplate';
        category: ClassOrganizer default;
        source: Object sourceCodeTemplate;
        yourself.
    self topez
        editCodeElement: methodElement asTopezProxy
        label: 'Code'
        inWindow: (self topez windowIdNamed: #'methodSource')
        at: 'method'.
    ^ true