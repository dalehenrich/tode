private
scanHomeDirForProjects: projectBlock
  | homeNode |
  homeNode := self topez lookup: '/home' ifAbsent: [ ^ self ].
  homeNode
    childrenAndNamesDo: [ :node :nodeName | 
      node isLeaf
        ifFalse: [ 
          (node childNamed: 'project' ifAbsent: [  ])
            ifNotNil: [ :projectNode | 
              | entry |
              entry := projectNode dotSelfObject.
              entry projectPath: projectNode parent printString.
              projectBlock value: entry ] ] ]