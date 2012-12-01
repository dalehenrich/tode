accessing
currentNode
    | node |
    node := self serverStatus currentNode.
    node
        ifNil: [ 
            node := self lookup: '/home'.
            self serverStatus currentNode: node ].
    ^ node