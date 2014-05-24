private
scanHomeDirForProjects: projectBlock
  | homeNode |
  homeNode := self topez lookup: '/home'.
  homeNode
    childrenAndNamesDo: [ :node :nodeName | 
      node isLeaf
        ifFalse: [ 
          (node childNamed: 'project' ifAbsent: [  ])
            ifNotNil: [ :projectNode | projectBlock value: projectNode dotSelfObject ] ] ]