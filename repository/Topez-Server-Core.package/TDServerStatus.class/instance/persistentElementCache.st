as yet unclassified
persistentElementCache
  persistentElementCache
    ifNil: [ 
      "bootstrapping ... normally persistentElementCache is supplied by TDTopezServer at creation time"
      persistentElementCache := IdentitySet new ].
  ^ persistentElementCache