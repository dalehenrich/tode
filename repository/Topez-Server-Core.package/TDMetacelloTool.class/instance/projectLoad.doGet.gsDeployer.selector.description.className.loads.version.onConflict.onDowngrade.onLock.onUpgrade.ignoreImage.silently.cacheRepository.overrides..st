project api
projectLoad: projectName doGet: doGet gsDeployer: gsDeployerOption selector: projectSelector description: repositoryDescription className: projectClassName loads: loads version: configurationVersion onConflict: onConflict onDowngrade: onDowngrade onLock: onLock onUpgrade: onUpgrade ignoreImage: ignoreImage silently: silently cacheRepository: cacheRepository overrides: repositoryOverrides
  "gsDeployerOption: #bulk, #auto, #none"

  | metacello onBlock loadBlock |
  metacello := Metacello new.
  metacello perform: projectSelector with: projectName.
  metacello repository: repositoryDescription.
  configurationVersion ifNotNil: [ metacello version: configurationVersion ].
  projectClassName ifNotNil: [ metacello className: projectClassName ].
  ignoreImage == true
    ifTrue: [ metacello ignoreImage ].
  silently == true
    ifTrue: [ metacello silently ].
  cacheRepository ifNotNil: [ metacello cacheRepository: cacheRepository ].
  repositoryOverrides
    ifNotNil: [ metacello repositoryOverrides: repositoryOverrides ].
  onBlock := [ :ex :aspect | 
  aspect == #'useIncoming'
    ifTrue: [ ex useIncoming ]
    ifFalse: [ 
      aspect == #'useLoaded'
        ifTrue: [ ex useLoaded ]
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
  doGet
    ifTrue: [ metacello copy get ].
  loadBlock := [ 
  | loadResult |
  loadResult := metacello load: loads.
  self topez resetAllGlobalNames.
  loadResult ].
  ^ gsDeployerOption == #'none'
    ifTrue: [ loadBlock value ]
    ifFalse: [ 
      gsDeployerOption == #'auto'
        ifTrue: [ GsDeployer autoMigrate: loadBlock ]
        ifFalse: [ 
          gsDeployerOption == #'bulk'
            ifFalse: [ TodeCommandError error: 'Unknown deploy option: ' , gsDeployerOption asString ].
          GsDeployer bulkMigrate: loadBlock ] ]