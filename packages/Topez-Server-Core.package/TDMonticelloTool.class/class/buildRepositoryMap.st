as yet unclassified
buildRepositoryMap
  | urlMap |
  urlMap := Dictionary new.
  MCRepositoryGroup default repositories
    collect: [ :repo | 
      | description url |
      description := (repo asRepositorySpecFor: MetacelloMCProject new) description.
      description = 'cache'
        ifTrue: [ description := 'cache://' , repo asOop asString , '@gemstone/cache' ].
      url := Url absoluteFromText: description.
      urlMap at: url asString put: repo.
      url ].
  ^ urlMap