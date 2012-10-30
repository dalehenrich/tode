command definition
installProjectNodes
    self rootNode
        addChildNode:
            (TZObjectNode new
                name: 'projects';
                extension: '/';
                elementBlock: [ :projectNode :projectName :absentBlock | 
                            TZObjectNode new
                                name: projectName;
                                extension: '/';
                                elementBlock: [ :elementNode :className :aBlock | 
                                            className = 'classes'
                                                ifFalse: [ self error: 'only classes supported' ].
                                            TZObjectNode new
                                                name: className;
                                                elementBlock: [ :classNode :bName :bBlock | self halt ];
                                                collectionBlock: [ :classNode | 
                                                            | projectProxy |
                                                            projectProxy := classNode topez
                                                                metacelloProjectNamed: classNode parent name.
                                                            classNode topez classesInMetacelloProject: projectProxy ];
                                                listBlock: [ :classNode | classNode topez classNamesInMetacelloProject: classNode parent name ];
                                                yourself ];
                                collectionBlock: [ :elementNode | self halt ];
                                listBlock: [ :classNode | #('classes' 'groups' 'packages' 'projects' 'tests') ];
                                yourself ];
                collectionBlock: [ :projectNode | self halt ];
                listBlock: [ :projectNode | projectNode topez metacelloProjectNames ];
                addBlock: [ :projectNode :projectName :block | self halt ];
                removeBlock: [ :projectNode :projectName | self halt ];
                yourself)