as yet unclassified
installOn: aTDTopezServer
    aTDTopezServer removeChildrenAt: self commandPath.
    (Pragma allNamed: #'topezCommand:' in: self class)
        collect: [ :pragma | 
            | block |
            block := self perform: pragma selector.
            aTDTopezServer installCommand: (pragma argumentAt: 1) block: block at: self commandPath ].
    (Pragma allNamed: #'topezNode:' in: self class)
        collect: [ :pragma | self perform: pragma selector with: aTDTopezServer ]