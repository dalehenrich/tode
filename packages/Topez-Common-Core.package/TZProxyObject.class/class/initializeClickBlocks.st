class initialization
initializeClickBlocks
    "self initialize"

    self clickBlocks
        at: #'cmdJKeyStroke'
            forClasses: #('TZStackFrameElement')
            put: [ :proxy :topez :editor | 
                    [ 
                    topez continueWith: proxy process.
                    (topez editorWindowAt: editor windowId) delete ]
                        on: TZTopezNotification
                        do: [ :ex | 
                            | stack evaluator frameIndex |
                            evaluator := topez evaluator.
                            evaluator exception: ex exceptionProxy.
                            stack := evaluator stack.
                            frameIndex := evaluator currentFrameIndex.
                            editor
                                list: stack;
                                listIndex: frameIndex ].
                    true ];
        at: #'cmdKKeyStroke' forClasses: #('TZStackFrameElement') put: [ :proxy :topez :editor |  ];
        at: #'cmdShiftKKeyStroke' forClasses: #('TZStackFrameElement') put: [ :proxy :topez :editor |  ];
        at: #'cmdTKeyStroke'
            forClasses: #('TZStackFrameElement')
            put: [ :proxy :topez :editor | 
                    [ topez stepWith: proxy process level: proxy frameIndex asTopezNative ]
                        on: TZTopezNotification
                        do: [ :ex | 
                            | stack evaluator frameIndex |
                            evaluator := topez evaluator.
                            evaluator exception: ex exceptionProxy.
                            stack := evaluator stack.
                            frameIndex := evaluator currentFrameIndex.
                            editor
                                list: stack;
                                listIndex: frameIndex ].
                    true ];
        at: #'cmdUKeyStroke'
            forClasses: #('TZStackFrameElement')
            put: [ :proxy :topez :editor | 
                    [ topez stepInto: proxy process ]
                        on: TZTopezNotification
                        do: [ :ex | 
                            | stack evaluator frameIndex |
                            evaluator := topez evaluator.
                            evaluator exception: ex exceptionProxy.
                            stack := evaluator stack.
                            frameIndex := evaluator currentFrameIndex.
                            editor
                                list: stack;
                                listIndex: frameIndex ].
                    true ];
        at: #'cmdBKeyStroke'
            forClasses: #('TZClassElement' 'TZMethodElement' 'TZMessageElement' 'TZStackFrameElement')
            put: [ :proxy :topez :editor | 
                    (topez evaluator class commands at: 'edit')
                        value: topez evaluator
                        value: topez
                        value:
                            {'edit'.
                            'class'.
                            (proxy elementClassName asTopezNative asString)}.
                    true ];
        at: #'cmdShiftBKeyStroke'
            forClasses: #('TZClassElement' 'TZMethodElement' 'TZMessageElement' 'TZInstanceElement')
            put: [ :proxy :topez :editor | 
                    ((self clickBlocks at: 'TZClassElement') at: #'singleClick') first value: proxy value: topez value: editor.
                    topez setClass: proxy elementClassName asTopezNative asString.
                    true ];
        at: #'cmdShiftBKeyStroke'
            forClass: 'TZStackFrameElement'
            put: [ :proxy :topez :editor | 
                    | methodElement |
                    methodElement := proxy methodElement.
                    methodElement proxyClassName asTopezNative asString = 'TZFrameMethodElement'
                        ifTrue: [ 
                            ((self clickBlocks at: 'TZClassElement') at: #'singleClick') first value: methodElement value: topez value: editor.
                            true ]
                        ifFalse: [ false ] ];
        at: #'cmdCKeyStroke'
            forClasses: #('TZClassElement' 'TZMethodElement' 'TZMessageElement')
            put: [ :proxy :topez :editor | 
                    editor addToClipboard: proxy.
                    true ];
        at: #'cmdMKeyStroke'
            forClass: 'TZStackFrameElement'
            put: [ :proxy :topez :editor | 
                    | methodElement block |
                    methodElement := proxy methodElement.
                    block := self clickBlocks at: #'cmdMKeyStroke' forClass: methodElement proxyClassName ifAbsent: [  ].
                    block == nil
                        ifTrue: [ false ]
                        ifFalse: [ block value: methodElement value: topez value: editor ] ];
        at: #'cmdMKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement' 'TZFrameMethodElement')
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
            forClass: 'TZStackFrameElement'
            put: [ :proxy :topez :editor | 
                    | methodElement block |
                    methodElement := proxy methodElement.
                    block := self clickBlocks at: #'cmdNKeyStroke' forClass: methodElement proxyClassName ifAbsent: [  ].
                    block == nil
                        ifTrue: [ false ]
                        ifFalse: [ block value: methodElement value: topez value: editor ] ];
        at: #'cmdNKeyStroke'
            forClasses: #('TZMethodElement' 'TZMessageElement' 'TZFrameMethodElement')
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
            forClass: 'TZStackFrameElement'
            put: [ :proxy :topez :editor | 
                    | methodElement block |
                    methodElement := proxy methodElement.
                    block := self clickBlocks
                        at: #'cmdShiftNKeyStroke'
                        forClass: methodElement proxyClassName
                        ifAbsent: [  ].
                    block == nil
                        ifTrue: [ false ]
                        ifFalse: [ block value: methodElement value: topez value: editor ] ];
        at: #'cmdShiftNKeyStroke'
            forClasses: #('TZClassElement' 'TZMethodElement' 'TZMessageElement' 'TZFrameMethodElement')
            put: [ :proxy :topez :editor | 
                    | list |
                    list := topez referencesTo: proxy elementClassName asTopezNative asString isMeta: false in: nil.
                    topez
                        editList: list
                        label: 'References to ' , proxy elementClassName asTopezNative asString
                        inWindow: nil
                        at: 'implementors'.
                    true ];
        at: #'cmdOKeyStroke'
            forClasses: #('TZMethodElement' 'TZTemplateMethodElement')
            put: [ :proxy :topez :editor | 
                    editor emptyTemplateElement ~~ nil
                        ifTrue: [ 
                            topez
                                editMethod: editor emptyTemplateElement asTopezProxy
                                label: 'Code'
                                inWindow: (topez windowIdNamed: #'methodSource')
                                at: 'method'.
                            true ]
                        ifFalse: [ false ] ];
        at: #'cmdPKeyStroke'
            forClass: 'TZInstanceElement'
            put: [ :proxy :topez :editor | 
                    topez
                        editMethod:
                            (TZTextElement new
                                source: proxy instance inspect proxyPrintString;
                                yourself)
                        label: 'Print'
                        inWindow: (topez windowIdNamed: #'printer')
                        at: 'method'.
                    true ];
        at: #'cmdVKeyStroke'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    editor objectClipboard
                        ifNotNil: [ :elementProxy | 
                            editor selectedElement
                                ifNotNil: [ :classElementProxy | topez addElement: elementProxy toClassElement: classElementProxy ] ].
                    true ];
        at: #'cmdVKeyStroke'
            forClasses: #('TZMethodElement' 'TZTemplateMethodElement')
            put: [ :proxy :topez :editor | 
                    editor objectClipboard ifNotNil: [ :elementProxy | topez addElement: elementProxy toMethodElement: proxy ].
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
            forClass: 'TZInstanceElement'
            put: [ :proxy :topez :editor | 
                    | list |
                    (topez
                        editList: (list := topez instanceElementFor: proxy instance)
                        label: 'inspect'
                        inWindow: nil
                        at: 'implementors')
                        setListIndex: 1;
                        renderAttribute: #'inspect';
                        yourself ];
        at: #'singleClick'
            forClass: 'TZMethodElement'
            put: [ :proxy :topez :editor | 
                    topez
                        editMethod: proxy
                        label: 'Code'
                        inWindow: (topez windowIdNamed: #'methodSource')
                        at: 'method' ];
        at: #'singleClick'
            forClass: 'TZStackFrameElement'
            put: [ :proxy :topez :editor | 
                    | methodElement list id |
                    methodElement := proxy methodElement.
                    (self clickBlocks at: #'singleClick' forClass: methodElement proxyClassName ifAbsent: [  ])
                        value: methodElement
                        value: topez
                        value: editor.
                    list := topez instanceElementFor: proxy receiverInstanceElement instance.
                    id := topez windowIdNamed: #'receiver'.
                    (topez
                        editList: list
                        label: 'receiver'
                        inWindow: id
                        at: 'receiver')
                        setListIndex: 1;
                        renderAttribute: #'inspect';
                        yourself.
                    list := proxy contextInstanceElement.
                    id := topez windowIdNamed: #'context'.
                    (topez
                        editList: list
                        label: 'context'
                        inWindow: id
                        at: 'context')
                        setListIndex: 1;
                        renderAttribute: #'inspect';
                        yourself ];
        at: #'singleClick'
            forClass: 'TZFrameMethodElement'
            put: [ :proxy :topez :editor | ((self clickBlocks at: 'TZMethodElement') at: #'singleClick') first value: proxy value: topez value: editor ];
        at: #'singleClick'
            forClass: 'TZExecutedCodeElement'
            put: [ :proxy :topez :editor | 
                    topez
                        editMethod: proxy
                        label: 'Execute Code'
                        inWindow: (topez windowIdNamed: #'methodSource')
                        at: 'method' ];
        at: #'singleClick'
            forClass: 'TZMessageElement'
            put: [ :proxy :topez :editor | 
                    topez setFindText: proxy messagePattern asTopezNative.
                    ((self clickBlocks at: 'TZMethodElement') at: #'singleClick') first
                        value: proxy
                        value: topez
                        value: editor ];
        at: #'singleClick'
            forClass: 'TZClassElement'
            put: [ :proxy :topez :editor | 
                    | hierarchyElements selectedElement |
                    topez
                        editDoIt: (topez classDefinition: proxy elementClass)
                        inClass: proxy elementClass
                        label: 'Class'
                        inWindow: (topez windowIdNamed: #'classDefinition')
                        at: 'classDef'.
                    hierarchyElements := topez hierarchyOf: proxy elementClass.
                    selectedElement := hierarchyElements
                        detect: [ :element | element elementClassName asTopezNative asString = proxy elementClassName asTopezNative asString ]
                        ifNone: [  ].
                    (topez
                        editList: hierarchyElements
                        label: 'Hierarchy'
                        inWindow: (topez windowIdNamed: #'hierarchy')
                        at: 'superclasses')
                        listIndex: (hierarchyElements indexOf: selectedElement);
                        yourself.
                    topez editClassSelectorsFor: proxy elementClass.
                    topez editInstanceSelectorsFor: proxy elementClass.
                    topez setClass: proxy elementClassName asTopezNative asString ];
        yourself