as yet unclassified
originalBuildRepositoryMap
  | urls map http httpRepos urlMap |
  map := Dictionary new.
  urlMap := Dictionary new.
  urls := MCRepositoryGroup default repositories
    collect: [ :repo | 
      | description url |
      description := (repo asRepositorySpecFor: MetacelloMCProject new) description.
      description = 'cache'
        ifTrue: [ description := 'cache://' , repo asOop asString , '@gemstone/cache' ].
      url := Url absoluteFromText: description.
      urlMap at: url put: repo.
      url ].
  urls
    do: [ :url | 
      | scheme list |
      scheme := url scheme.
      list := map at: scheme ifAbsent: [ map at: scheme put: OrderedCollection new ].
      list add: url ].
  http := map at: 'http'.
  httpRepos := Dictionary new.
  http
    do: [ :url | 
      | authority list |
      authority := url authority.
      list := httpRepos at: authority ifAbsent: [ httpRepos at: authority put: OrderedCollection new ].
      list add: url ].
  map at: 'http' put: httpRepos.
  map at: 'raw' put: urls.
  ^ map