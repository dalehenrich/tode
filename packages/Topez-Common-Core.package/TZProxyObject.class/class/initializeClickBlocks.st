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
                        at: 'method'.
                    topez setClass: proxy elementClassName ];
        at: #'singleClick'
            forClass: 'TZMessageElement'
            put: [ :proxy :topez :editor | 
                    ((self clickBlocks at: 'TZClassElement') at: #'singleClick') first value: proxy value: topez value: editor.
                    ((self clickBlocks at: 'TZMethodElement') at: #'singleClick') first
                        value: proxy
                        value: topez
                        value: editor ];
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
                    topez
                        editList: (topez classSelectors: proxy proxyClass)
                        label: proxy elementClassName asTopezNative , ' class'
                        inWindow: (topez windowIdNamed: #'classSelectors')
                        at: 'classSelectors'.
                    topez
                        editList: (topez instanceSelectors: proxy proxyClass)
                        label: proxy elementClassName asTopezNative
                        inWindow: (topez windowIdNamed: #'instanceSelectors')
                        at: 'instanceSelectors'.
                    topez setClass: proxy elementClassName ];
        yourself