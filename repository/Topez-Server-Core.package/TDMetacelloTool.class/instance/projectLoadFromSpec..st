project api
projectLoadFromSpec: projectLoadSpec
  | metacello onBlock loadBlock |
  metacello := Metacello new.
  metacello
    perform: projectLoadSpec projectSelector
    with: projectLoadSpec projectName.
  metacello repository: projectLoadSpec repositoryDescription.
  projectLoadSpec configurationVersion
    ifNotNil: [ :vrsn | metacello version: vrsn ].
  projectLoadSpec projectClassName
    ifNotNil: [ :clsName | metacello className: clsName ].
  projectLoadSpec ignoreImage
    ifTrue: [ metacello ignoreImage ].
  projectLoadSpec silently
    ifTrue: [ metacello silently ].
  projectLoadSpec cacheRepository
    ifNotNil: [ :cacheRepo | metacello cacheRepository: cacheRepo ].
  projectLoadSpec repositoryOverrides
    ifNotNil: [ :overrides | metacello repositoryOverrides: overrides ].
  onBlock := [ :ex :aspect | 
  aspect == #'useIncoming'
    ifTrue: [ ex useIncoming ]
    ifFalse: [ 
      aspect == #'useLoaded'
        ifTrue: [ ex useLoaded ]
        ifFalse: [ ex pass ] ] ].
  projectLoadSpec onConflict
    ifNotNil: [ :onConflict | metacello onConflict: [ :ex | onBlock value: ex value: onConflict ] ].
  projectLoadSpec onDowngrade
    ifNotNil: [ :onDowngrade | metacello onDowngrade: [ :ex | onBlock value: ex value: onDowngrade ] ].
  projectLoadSpec onUpgrade
    ifNotNil: [ :onUpgrade | metacello onUpgrade: [ :ex | onBlock value: ex value: onUpgrade ] ].
  projectLoadSpec onLock
    ifNotNil: [ :onLock | 
      metacello
        onLock: [ :ex | 
          onLock == #'break'
            ifTrue: [ ex break ]
            ifFalse: [ 
              onLock == #'honor'
                ifTrue: [ ex honor ]
                ifFalse: [ ex pass ] ] ] ].
  projectLoadSpec doGet
    ifTrue: [ metacello copy get ].
  loadBlock := [ 
  | loadResult |
  loadResult := metacello load: projectLoadSpec loads.
  self topez resetAllGlobalNames.
  loadResult ].
  ^ projectLoadSpec gsDeployerOption == #'none'
    ifTrue: [ loadBlock value ]
    ifFalse: [ 
      projectLoadSpec gsDeployerOption == #'auto'
        ifTrue: [ GsDeployer autoMigrate: loadBlock ]
        ifFalse: [ 
          projectLoadSpec gsDeployerOption == #'bulk'
            ifFalse: [ 
              TodeCommandError
                error:
                  'Unknown deploy option: ' , projectLoadSpec gsDeployerOption asString ].
          GsDeployer bulkMigrate: loadBlock ] ]