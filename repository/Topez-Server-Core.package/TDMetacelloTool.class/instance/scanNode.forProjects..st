private
scanNode: dirNode forProjects: projectBlock
  dirNode
    childrenAndNamesDo: [ :node :nodeName | 
      node isLeaf
        ifFalse: [ 
          (node childNamed: 'project' ifAbsent: [  ])
            ifNotNil: [ :projectNode | 
              | entry |
              entry := projectNode dotSelfObject.
              entry projectPath: projectNode parent printString.
              projectBlock value: entry ] ] ]