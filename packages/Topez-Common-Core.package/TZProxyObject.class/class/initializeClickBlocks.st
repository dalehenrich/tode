class initialization
initializeClickBlocks
    "self initialize"

    self clickBlocks
        at: #'singleClick'
            forClass: 'TZMethodElement'
            put: [ :proxy :topez :editor | 
                    topez
                        editCodeElement: proxy
                        label: 'Code'
                        inWindow: (topez windowIdNamed: #'methodSource')
                        at: 'method' ];
        at: #'singleClick'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    topez
                        editCode: (topez classDefinition: proxy proxyClass)
                        inClass: proxy proxyClass
                        label: 'Class'
                        inWindow: (topez windowIdNamed: #'classDefinition')
                        at: 'classDef'.
                    topez
                        editList: (topez superclassesOf: proxy proxyClass)
                        label: 'Superclasses'
                        inWindow: (topez windowIdNamed: #'superclasses')
                        at: 'superclasses'.
                    topez
                        editList: (topez subclassesOf: proxy proxyClass)
                        label: 'Subclasses'
                        inWindow: (topez windowIdNamed: #'subclasses')
                        at: 'subclasses'.
                    Sensor shiftPressed
                        ifTrue: [ 
                            topez
                                editList: (topez classSelectors: proxy proxyClass)
                                label: 'Class Selectors for: ' , proxy proxyClassName
                                inWindow: (topez windowIdNamed: #'selectors')
                                at: 'selectors' ]
                        ifFalse: [ 
                            topez
                                editList: (topez instanceSelectors: proxy proxyClass)
                                label: 'Selectors for: ' , proxy proxyClassName
                                inWindow: (topez windowIdNamed: #'selectors')
                                at: 'selectors' ].
                    topez setClass: proxy proxyClassName ];
        yourself