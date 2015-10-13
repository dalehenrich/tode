project
projectsummary
  "
  project summary
"

  | stream report |
  stream := WriteStream on: String new.
  (MCWorkingCopy allManagers select: [ :ea | ea modified ])
    do: [ :each | 
      | patch repo allRepos |
      allRepos := each repositoryGroup repositories.
      repo := allRepos
        detect: [ :each | each isKindOf: MCHttpRepository ]
        ifNone: [ nil ].
      repo isNil
        ifTrue: [ 
          repo := allRepos
            detect: [ :each | each isKindOf: MCFileBasedRepository ]
            ifNone: [ nil ] ].
      repo isNil
        ifFalse: [ 
          stream
            nextPutAll: 'Package: ' , each ancestry ancestorString;
            cr.
          patch := each changesRelativeToRepository: repo.
          patch operations
            do: [ :op | 
              stream
                tab;
                nextPutAll: op summary;
                cr ].
          stream cr ] ].
  report := stream contents.
  report edit: self topez.
  ^ report