as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer removeChildrenAt: self commandPath.
  (Pragma allNamed: #'topezCommand:manPage:' in: self class)
    do: [ :pragma | 
      | block node |
      block := self perform: pragma selector.
      node := aTDTopezServer installCommand: (pragma argumentAt: 1) block: block at: self commandPath.
      node manPage: (self perform: (pragma argumentAt: 2)) ].
  (Pragma allNamed: #'topezNode:' in: self class) do: [ :pragma | self perform: pragma selector with: aTDTopezServer ].
  (aTDTopezServer lookup: self commandPath)
    readMe: self toolReadMe;
    yourself.
  self installTestSpecOn: aTDTopezServer