accessing
singleClick: topez from: anEditor
    topez
        editCode: (topez classDefinition: self proxyClass)
        inClass: self proxyClass
        label: 'Class'
        inWindow: (topez windowNamed: #'classDefinition').
    Sensor shiftPressed
        ifTrue: [ 
            topez
                editList: (topez classSelectors: self proxyClass)
                label: 'Class Selectors'
                inWindow: (topez windowNamed: #'selectors') ]
        ifFalse: [ 
            topez
                editList: (topez instanceSelectors: self proxyClass)
                label: 'Selectors'
                inWindow: (topez windowNamed: #'selectors') ].
    topez setClass: self proxyClassName