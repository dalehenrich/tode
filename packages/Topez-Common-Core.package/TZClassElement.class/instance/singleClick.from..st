accessing
singleClick: topez from: anEditor
    topez
        editCode: (topez classDefinition: self proxyClass)
        inClass: self proxyClass
        label: 'Class'
        inWindow: (topez windowIdNamed: #'classDefinition').
    topez
        editList: (topez classHierarchyFor: self proxyClass)
        label: 'Hierarchy'
        inWindow: (topez windowIdNamed: #'hierarchy').
    topez
        editList: (topez subclassesOf: self proxyClass)
        label: 'Subclasses'
        inWindow: (topez windowIdNamed: #'subclasses').
    Sensor shiftPressed
        ifTrue: [ 
            topez
                editList: (topez classSelectors: self proxyClass)
                label: 'Class Selectors'
                inWindow: (topez windowIdNamed: #'selectors') ]
        ifFalse: [ 
            topez
                editList: (topez instanceSelectors: self proxyClass)
                label: 'Selectors'
                inWindow: (topez windowIdNamed: #'selectors') ].
    topez setClass: self proxyClassName