class initialization
initializeClickBlocks
    "self initialize"

    self clickBlocks
        at: #'singleClick'
            forClass: 'TZMethodElement'
            put: [ :proxy :topez :editor | topez editCodeElement: proxy label: 'Code' inWindow: (topez windowIdNamed: #'methodSource') ];
        at: #'singleClick'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    topez
                        editCode: (topez classDefinition: proxy proxyClass)
                        inClass: proxy proxyClass
                        label: 'Class'
                        inWindow: (topez windowIdNamed: #'classDefinition').
                    topez
                        editList: (topez superclassesOf: proxy proxyClass)
                        label: 'Hierarchy'
                        inWindow: (topez windowIdNamed: #'hierarchy').
                    topez
                        editList: (topez subclassesOf: proxy proxyClass)
                        label: 'Subclasses'
                        inWindow: (topez windowIdNamed: #'subclasses').
                    Sensor shiftPressed
                        ifTrue: [ 
                            topez
                                editList: (topez classSelectors: proxy proxyClass)
                                label: 'Class Selectors'
                                inWindow: (topez windowIdNamed: #'selectors') ]
                        ifFalse: [ 
                            topez
                                editList: (topez instanceSelectors: proxy proxyClass)
                                label: 'Selectors'
                                inWindow: (topez windowIdNamed: #'selectors') ].
                    topez setClass: proxy proxyClassName ];
        yourself