project api
projectLoad: projectName selector: projectSelector repositoryDescription: repositoryDescription loads: loads version: configurationVersion onConflict: onConflict onDowngrade: onDowngrade onLock: onLock onUpgrade: onUpgrade ignoreImage: ignoreImage silently: silently cacheRepository: cacheRepository repositoryOverrides: repositoryOverrides
  | metacello onBlock |
  metacello := Metacello new.
  metacello perform: projectSelector with: projectName.
  metacello repository: repositoryDescription.
  configurationVersion ifNotNil: [ metacello version: configurationVersion ].
  ignoreImage ifNotNil: [ metacello ignoreImage: ignoreImage ].
  silently ifNotNil: [ metacello silently: silently ].
  cacheRepository ifNotNil: [ metacello cacheRepository: cacheRepository ].
  repositoryOverrides
    ifNotNil: [ metacello repositoryOverrides: repositoryOverrides ].
  onBlock := [ :ex :aspect | 
  aspect == #'useIncoming'
    ifTrue: [ ex useIncoming ]
    ifFalse: [ 
      aspect == #'useExisting'
        ifTrue: [ ex useExisting ]
        ifFalse: [ ex pass ] ] ].
  onConflict
    ifNotNil: [ metacello onConflict: [ :ex | onBlock value: ex value: onConflict ] ].
  onDowngrade
    ifNotNil: [ metacello onDowngrade: [ :ex | onBlock value: ex value: onDowngrade ] ].
  onUpgrade
    ifNotNil: [ metacello onUpgrade: [ :ex | onBlock value: ex value: onUpgrade ] ].
  onLock
    ifNotNil: [ 
      metacello
        onLock: [ :ex | 
          onLock == #'break'
            ifTrue: [ ex break ]
            ifFalse: [ 
              onLock == #'honor'
                ifTrue: [ ex honor ]
                ifFalse: [ ex pass ] ] ] ].
  ^ metacello load: loads