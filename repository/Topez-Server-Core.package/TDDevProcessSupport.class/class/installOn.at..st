as yet unclassified
installOn: topez at: path
  (Pragma allNamed: #'topezCommand:manPage:' in: self class)
    do: [ :pragma | 
      | block commandName pragmaResult manPage |
      block := self perform: pragma selector.
      commandName := pragma argumentAt: 1.
      pragmaResult := self perform: (pragma argumentAt: 2).
      pragmaResult isString
        ifTrue: [ manPage := TDManPage commandName: commandName fromString: pragmaResult ]
        ifFalse: [ manPage := pragmaResult ].
      manPage
        commandPath: path , commandName;
        sourceMethod: self name asString , ' class>>' , pragma selector asString.
      (topez lookup: path)
        addChildNode:
          (TDScriptLeafNode new
            name: commandName;
            block: (self perform: pragma selector);
            blockVendor: self;
            manPage: manPage;
            yourself) ]