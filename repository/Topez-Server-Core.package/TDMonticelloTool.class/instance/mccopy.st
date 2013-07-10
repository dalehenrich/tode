as yet unclassified
mccopy
  "mc copy <version-name> <source-repository-spec> <dest1-repository-spec> [ <dest2-repository-spec> ... ]
      copy @<version-path> <dest1-repository-spec> [ <dest2-repository-spec> ... ]
      copy @<version-path> @<repository-path> [ @<repository-path-list> ...]
      copy @<version-path> @<repository-path-list> [ @<repository-path> ...]
  "

  | repoSpecs version resolutionAr |
  resolutionAr := self resolveVersionReferenceStartingAt: 2 inTokens: tokens.
  version := resolutionAr at: 1.
  repoSpecs := tokens copyFrom: (resolutionAr at: 2) to: tokens size.
  ^ repoSpecs
    collect: [ :repoSpec | 
      | repoOrList |
      repoOrList := self resolveRepositoryReference: repoSpec.
      repoOrList isCollection
        ifTrue: [ 
          repoOrList
            do: [ :repo | 
              Transcript
                cr;
                show:
                    'Copied: ' , version info name printString , ' --' , repo description.
              repo storeVersion: version ] ]
        ifFalse: [ 
          Transcript
            cr;
            show:
                'Copied: ' , version info name printString , ' --' , repoOrList description.
          repoOrList storeVersion: version ] ]