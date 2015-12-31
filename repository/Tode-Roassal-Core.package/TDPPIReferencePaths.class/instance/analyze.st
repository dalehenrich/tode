analysis
analyze
  oopToNodeMap := IdentityKeyValueDictionary new.
  searchNodeMap := IdentityKeyValueDictionary new.
  self searchObjects
    do: [ :searchObject | 
      | node |
      node := TDPPISearchNode for: searchObject in: self.
      oopToNodeMap at: searchObject asOop put: node.
      self commit.
      (self searchObjectMap at: searchObject)
        do: [ :ar | 
          | theNode lastNode nodeRef |
          theNode := lastNode := nil.
          nodeRef := {}.
          1 to: ar size do: [ :index | 
            | referenceObject |
            referenceObject := ar at: index.
            theNode := oopToNodeMap
              at: referenceObject asOop
              ifPresent: [ :existingNode | existingNode ]
              ifAbsent: [ 
                | referenceNode |
                referenceNode := index == 1
                  ifTrue: [ TDPPIRootNode for: referenceObject in: self ]
                  ifFalse: [ TDPPIReferenceNode for: referenceObject in: self ].
                oopToNodeMap at: referenceObject asOop put: referenceNode.
                referenceNode ].
            lastNode
              ifNotNil: [ 
                theNode addParent: lastNode.
                lastNode addChild: theNode ].
            lastNode := theNode.
            nodeRef add: theNode ].
          (searchNodeMap at: node ifAbsent: [ searchNodeMap at: node put: {} ])
            add: nodeRef.
          self commit ] ].
  classNameMap := StringKeyValueDictionary new.
  oopToNodeMap values
    do: [ :node | 
      | set |
      set := classNameMap
        at: node className
        ifAbsent: [ classNameMap at: node className put: IdentitySet new ].
      set add: node ].
  self commit.
  self summary
    at: 'total objs' put: oopToNodeMap size;
    at: 'classes' put: classNameMap size;
    yourself.
  self commit