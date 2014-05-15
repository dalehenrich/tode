private
findProjectExtensionNodes
  | homeNode extensions |
  false
    ifTrue: [ ^ #() ].
  homeNode := self topez lookup: '/home'.
  extensions := {}.
  homeNode
    childrenAndNamesDo: [ :node :nodeName | 
      node isLeaf
        ifFalse: [ 
          (node childNamed: 'project' ifAbsent: [  ])
            ifNotNil: [ :projectNode | extensions add: projectNode dotSelfObject ] ] ].
  ^ extensions