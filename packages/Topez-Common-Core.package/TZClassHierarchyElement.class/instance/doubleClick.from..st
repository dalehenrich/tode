accessing
doubleClick: topez from: anEditor
    topez
        editCode: (topez classDefinition: topez currentClass)
            inClass: topez currentClass
            label: 'Class'
            inWindow: anEditor classDefinitionWindowId;
        editList: (topez instanceSelectors: topez currentClass)
            label: 'Selectors'
            inWindow: anEditor classSelectorsWindowId