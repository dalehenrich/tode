class initialization
initializeClickBlocks
    "self initialize"

    self clickBlocks
        at: #'cmdCKeyStroke'
            forClasses: #('TZClassElement' 'TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    editor addToClipboard: proxy.
                    true ];
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
            forClasses: #('TZClassElement' 'TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    | list |
                    list := topez referencesTo: proxy elementClassName asTopezNative isMeta: false in: nil.
                    topez
                        editList: list
                        label: 'References to ' , proxy elementClassName asTopezNative
                        inWindow: nil
                        at: 'implementors'.
                    true ];
        at: #'cmdVKeyStroke'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    editor objectClipboard
                        ifNotNil: [ :elementProxy | 
                            editor selectedElement
                                ifNotNil: [ :classElementProxy | topez addElement: elementProxy toClassElement: classElementProxy ] ].
                    true ];
        at: #'cmdXKeyStroke'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | topez deleteClassElement: proxy ];
        at: #'cmdXKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    editor addToClipboard: proxy.
                    topez deleteMethodElement: proxy ];
        at: #'singleClick'
            forClass: 'TZStackFrame'
            put: [ :proxy :topez :editor | 
                    topez
                        editList: (topez instanceElementFor: proxy receiver)
                        label: 'receiver'
                        inWindow: nil
                        at: 'receiver' ];
        at: #'singleClick'
            forClass: 'TZInstanceElement'
            put: [ :proxy :topez :editor | 
                    | list |
                    topez
                        editList: (list := topez instanceElementFor: proxy instance)
                        selection: (list at: 1)
                        renderAttribute: #'inspector'
                        templateElement: nil
                        label: 'inspect'
                        inWindow: nil
                        at: 'implementors'.
                    topez setInstance: proxy instance.
                    ((self clickBlocks at: 'TZClassElement') at: #'singleClick') first
                        value: proxy
                        value: topez
                        value: editor ];
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
                    topez setFindText: proxy messagePattern asTopezNative.
                    ((self clickBlocks at: 'TZClassElement') at: #'singleClick') first
                        value: proxy
                        value: topez
                        value: editor.
                    ((self clickBlocks at: 'TZMethodElement') at: #'singleClick') first
                        value: proxy
                        value: topez
                        value: editor ];
        at: #'singleClick'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    | hierarchyElements selectedElement |
                    topez
                        editCode: (topez classDefinition: proxy elementClass)
                        inClass: proxy elementClass
                        label: 'Class'
                        inWindow: (topez windowIdNamed: #'classDefinition')
                        at: 'classDef'.
                    hierarchyElements := topez hierarchyOf: proxy elementClass.
                    selectedElement := hierarchyElements
                        detect: [ :element | element elementClassName asTopezNative asString = proxy elementClassName asTopezNative asString ]
                        ifNone: [  ].
                    topez
                        editList: hierarchyElements
                        selection: selectedElement
                        label: 'Hierarchy'
                        inWindow: (topez windowIdNamed: #'hierarchy')
                        at: 'superclasses'.
                    topez editClassSelectorsFor: proxy elementClass.
                    topez editInstanceSelectorsFor: proxy elementClass.
                    topez setClass: proxy elementClassName ];
        yourself