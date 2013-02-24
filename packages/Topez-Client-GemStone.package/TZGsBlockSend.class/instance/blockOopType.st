as yet unclassified
blockOopType
  blockOopType
    ifNil: [ 
      blockOopType := self session
        rawExecuteStringNB: self blockSource
        envId: self environmentId ].
  ^ blockOopType