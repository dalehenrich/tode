as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer removeChildrenAt: self commandPath.
  (Pragma allNamed: #'topezCommand:manPage:' in: self class)
    do: [ :pragma | 
      | block node pragmaResult manPage |
      block := self perform: pragma selector.
      node := aTDTopezServer
        installCommand: (pragma argumentAt: 1)
        block: block
        vendor: self
        at: self commandPath.
      pragmaResult := self perform: (pragma argumentAt: 2).
      pragmaResult isString
        ifTrue: [ manPage := TDManPage fromString: pragmaResult ]
        ifFalse: [ manPage := pragmaResult ].
      manPage
        commandPath: self commandPath , '/bin/' , (pragma argumentAt: 1);
        sourceMethod: self name asString , ' class>>' , pragma selector asString.
      node manPage: manPage ].
  (Pragma allNamed: #'topezNode:' in: self class)
    do: [ :pragma | self perform: pragma selector with: aTDTopezServer ].
  (aTDTopezServer lookup: self commandPath)
    readMe: self toolReadMe;
    yourself.
  self installTestSpecOn: aTDTopezServer