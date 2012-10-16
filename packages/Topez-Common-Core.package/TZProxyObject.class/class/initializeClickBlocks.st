class initialization
initializeClickBlocks
    "self initialize"

    self clickBlocks
        at: #'cmdMKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    (topez evaluator class commands at: 'edit')
                        value: topez evaluator
                        value: topez
                        value:
                            {'edit'.
                            'implementors'.
                            (proxy selector asTopezNative)}.
                    true ];
        at: #'cmdNKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    (topez evaluator class commands at: 'edit')
                        value: topez evaluator
                        value: topez
                        value:
                            {'edit'.
                            'senders'.
                            (proxy selector asTopezNative)}.
                    true ];
        at: #'cmdShiftNKeyStroke'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    | list |
                    list := topez referencesTo: proxy elementClassName asTopezNative isMeta: false in: nil.
                    topez
                        editList: list
                        label: 'References to ' , proxy elementClassName asTopezNative
                        inWindow: (topez windowIdNamed: #'messages')
                        at: 'implementors'.
                    true ];
        at: #'cmdVKeyStroke'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    ElementCopyPasteBuffer
                        ifNotNil: [ :methodElement | editor selectedElement ifNotNil: [ :classElement | topez addMethodElement: methodElement toClassElement: classElement ] ].
                    true ];
        at: #'cmdCKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    ElementCopyPasteBuffer := proxy.
                    true ];
        at: #'cmdXKeyStroke'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | topez deleteClassElement: proxy ];
        at: #'cmdXKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    ElementCopyPasteBuffer := proxy.
                    topez deleteMethodElement: proxy ];
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
                    | hierarchyElements selectedElement |
                    topez
                        editCode: (topez classDefinition: proxy proxyClass)
                        inClass: proxy proxyClass
                        label: 'Class'
                        inWindow: (topez windowIdNamed: #'classDefinition')
                        at: 'classDef'.
                    hierarchyElements := topez hierarchyOf: proxy proxyClass.
                    selectedElement := hierarchyElements
                        detect: [ :element | element elementClassName asTopezNative asString = proxy elementClassName asTopezNative asString ]
                        ifNone: [  ].
                    topez
                        editList: hierarchyElements
                        selection: selectedElement
                        label: 'Hierarchy'
                        inWindow: (topez windowIdNamed: #'hierarchy')
                        at: 'superclasses'.
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