accessing
currentNode
    currentNode ifNil: [ currentNode := self lookup: '/home' ].
    ^ currentNode