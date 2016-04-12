as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer removeChildrenAt: self commandPath.
  (Pragma allNamed: #'topezCommand:manPage:' in: self class)
    do: [ :pragma | 
      | block node pragmaResult manPage commandName |
      block := self perform: pragma selector.
      commandName := pragma argumentAt: 1.
      node := aTDTopezServer
        installCommand: commandName
        block: block
        vendor: self
        at: self commandPath.
      node topez: nil.	"avoid keeping the parent topez alive forever"
      pragmaResult := self perform: (pragma argumentAt: 2).
      pragmaResult isString
        ifTrue: [ manPage := TDManPage commandName: commandName fromString: pragmaResult ]
        ifFalse: [ manPage := pragmaResult ].
      manPage
        commandPath: self commandPath , '/bin/' , commandName;
        sourceMethod: self name asString , ' class>>' , pragma selector asString.
      node manPage: manPage ].
  (Pragma allNamed: #'topezNode:' in: self class)
    do: [ :pragma | self perform: pragma selector with: aTDTopezServer ].
  (aTDTopezServer lookup: self commandPath)
    readMe: self toolReadMe;
    yourself.
  self installTestSpecOn: aTDTopezServer