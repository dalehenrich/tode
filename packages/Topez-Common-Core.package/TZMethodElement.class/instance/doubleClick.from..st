accessing
doubleClick: topez from: anEditor
    topez
        editCode: (topez sourceForMethod: self selector)
        inClass: topez currentClass
        label: 'Code'
        inWindow: anEditor methodWindowId