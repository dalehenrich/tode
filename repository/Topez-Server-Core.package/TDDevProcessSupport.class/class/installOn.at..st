as yet unclassified
installOn: topez at: path
  (Pragma allNamed: #'topezCommand:manPage:' in: self class)
    do: [ :pragma | 
      | block node |
      block := self perform: pragma selector.
      node := (topez lookup: path)
        addChildNode:
          (TDScriptLeafNode new
            name: (pragma argumentAt: 1);
            block: (self perform: pragma selector);
            yourself).
      node
        manPage:
          (TDManPage
            fromString: (self perform: (pragma argumentAt: 2))
            commandPath: path , (pragma argumentAt: 1)
            sourceMethod:
              self name asString , ' class>>' , pragma selector asString) ]