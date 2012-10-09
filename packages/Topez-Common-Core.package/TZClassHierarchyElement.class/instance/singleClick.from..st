accessing
singleClick: topez from: anEditor
    | class |
    class := topez currentClass.
    topez
        editCode: (topez classDefinition: class)
            inClass: topez currentClass
            label: 'Class'
            inWindow: (topez windowNamed: #'classDefinition');
        editList: (topez instanceSelectors: class) label: 'Selectors' inWindow: (topez windowNamed: #'selectors')