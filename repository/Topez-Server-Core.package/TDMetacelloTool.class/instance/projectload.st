project
projectload
  "
  project load [--loads=<load-expression>]
               [--className=<project-class-name]
               [--no-flush] [--no-get]
               [ (--baseline | --configuration --version=<version> ) ]
               [--repository=<repository-reference>]
               [--onConflict=useNew|useExisting]
               [--onDowngrade=useNew|useExisting]
               [--onLock=break|honor]
               [--onUpgrade=useNew|useExisting]
               [--ignoreImage] [--silently]
               [--cacheRepository=@<repository-reference>]
               [--repositoryOverrides=@<repository-reference>]
               [--deploy=auto|bulk|none]
               ( <project-name> | @<project-reference> )
"

  | projectName projectClassName registration description loads loaded projectSelector metacello configurationVersion onConflict onDowngrade onLock onUpgrade ignoreImage silently cacheRepository repositoryOverrides doGet gsDeployerOption |
  self
    getSubcommandOptsMixedLongShort:
      {#('baseline' nil #'none').
      #('cacheRepository' nil #'required').
      #('className' nil #'required').
      #('configuration' nil #'none').
      #('deploy' nil #'required').
      #('ignoreImage' nil #'none').
      #('loads' nil #'required').
      #('no-flush' nil #'none').
      #('no-get' nil #'none').
      #('onConflict' nil #'required').
      #('onDowngrade' nil #'required').
      #('onLock' nil #'required').
      #('onUpgrade' nil #'required').
      #('repository' nil #'required').
      #('repositoryOverrides' nil #'required').
      #('silently' nil #'none').
      #('version' nil #'required')}.
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  description := registration repositorySpec description.
  projectSelector := #'baseline:'.
  subOptions
    at: 'baseline'
    ifAbsent: [ 
      subOptions
        at: 'configuration'
        ifPresent: [ 
          projectSelector := #'configuration:'.
          subOptions
            at: 'version'
            ifPresent: [ :arg | 
              (arg beginsWith: '#')
                ifTrue: [ 
                  "handle symbolic versions"
                  configurationVersion := arg copyFrom: 2 to: arg size.
                  (configurationVersion beginsWith: '''')
                    ifTrue: [ 
                      configurationVersion := configurationVersion
                        copyFrom: 2
                        to: configurationVersion size - 1 ].
                  configurationVersion := configurationVersion asSymbol ]
                ifFalse: [ configurationVersion := arg ] ] ] ].
  subOptions at: 'no-flush' ifAbsent: [ self repositoryFlush ].
  subOptions
    at: 'repository'
    ifPresent: [ :arg | description := (self resolveRepositoryReference: arg) description ].
  subOptions at: 'onConflict' ifPresent: [ :arg | onConflict := arg asSymbol ].
  subOptions at: 'onDowngrade' ifPresent: [ :arg | onConflict := arg asSymbol ].
  subOptions at: 'onLock' ifPresent: [ :arg | onConflict := arg asSymbol ].
  subOptions at: 'onUpgrade' ifPresent: [ :arg | onConflict := arg asSymbol ].
  subOptions at: 'ignoreImage' ifPresent: [ :arg | ignoreImage := true ].
  subOptions at: 'silently' ifPresent: [ :arg | silently := true ].
  subOptions
    at: 'cacheRepository '
    ifPresent: [ :arg | cacheRepository := self resolveRepositoryReference: arg ].
  subOptions
    at: ' repositoryOverrides'
    ifPresent: [ :arg | repositoryOverrides := self resolveRepositoryReference: arg ].
  subOptions
    at: 'className'
    ifPresent: [ :arg | projectClassName := arg ]
    ifAbsent: [ projectClassName := nil ].
  subOptions
    at: 'loads'
    ifPresent: [ :arg | loads := arg evaluate ]
    ifAbsent: [ 
      registration loads
        ifNotNil: [ :loadList | loads := loadList ]
        ifNil: [ loads := 'default' ] ].
  subOptions
    at: 'no-get'
    ifPresent: [ :ignored | doGet := false ]
    ifAbsent: [ doGet := true ].
  subOptions
    at: 'deploy'
    ifPresent: [ :arg | gsDeployerOption := arg asSymbol ]
    ifAbsent: [ gsDeployerOption := #'bulk' ].
  ^ self
    projectLoad: registration projectName
    doGet: doGet
    gsDeployer: gsDeployerOption
    selector: projectSelector
    description: description
    className: projectClassName
    loads: loads
    version: configurationVersion
    onConflict: onConflict
    onDowngrade: onDowngrade
    onLock: onLock
    onUpgrade: onUpgrade
    ignoreImage: ignoreImage
    silently: silently
    cacheRepository: cacheRepository
    overrides: repositoryOverrides