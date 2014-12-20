private
scanNode: dirNode forProjects: projectBlock
  dirNode
    childrenDo: [ :node | 
      node isLeaf
        ifFalse: [ 
          (node childNamed: 'project' ifAbsent: [  ])
            ifNotNil: [ :projectNode | 
              | entry |
              entry := projectNode dotSelfObject.
              entry projectPath: projectNode parent printString.
              projectBlock value: entry ] ] ]