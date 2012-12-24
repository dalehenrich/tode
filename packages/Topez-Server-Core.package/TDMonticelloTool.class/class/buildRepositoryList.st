as yet unclassified
buildRepositoryList
  ^ (MCRepositoryGroup default repositories
    collect: [ :repo | 
      | description url |
      description := (repo asRepositorySpecFor: MetacelloMCProject new) description.
      description = 'cache'
        ifTrue: [ description := 'cache://' , repo asOop asString , '@gemstone/cache' ].
      url := Url absoluteFromText: description.
      TDMonticelloRepository new
        url: url;
        repository: repo;
        yourself ]) asArray