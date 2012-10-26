api
currentNode
    ^ self status currentWorkingNode ifNil: [ self lookup: '/home' ]