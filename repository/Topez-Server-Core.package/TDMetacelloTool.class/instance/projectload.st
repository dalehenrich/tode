project
projectload
  "
  project load [--loads=<load-expression>]
               [--className=<project-class-name]
               [--no-flush] [--no-get]
               [ (--baseline | --configuration --version=<version> ) ]
               [--repository=<repository-reference>]
               [--onConflict=useIncoming|useLoaded]
               [--onDowngrade=useIncoming|useLoaded]
               [--onLock=break|honor]	
               [--onUpgrade=useIncoming|useLoaded]
               [--ignoreImage] [--silently]
               [--cacheRepository=@<repository-reference>]
               [--repositoryOverrides=@<repository-reference>]
               [--deploy=auto|bulk|none]
               ( <project-name> | @<project-reference> )
"

  | projectName projectClassName registration description loads loaded projectSelector metacello configurationVersion onConflict onDowngrade onLock onUpgrade ignoreImage silently cacheRepository repositoryOverrides doGet gsDeployerOption repository projectLoadSpec |
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
  subOptions
    at: 'baseline'
    ifPresent: [ projectSelector := #'baseline:' ]
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
                ifFalse: [ configurationVersion := arg ] ]
            ifAbsent: [ configurationVersion := registration configurationVersionString ] ]
        ifAbsent: [ 
          projectSelector := registration projectSelector.
          configurationVersion := registration configurationVersionString ] ].
  subOptions
    at: 'repository'
    ifPresent: [ :arg | repository := self resolveRepositoryReference: arg ]
    ifAbsent: [ repository := registration repository ].
  description := repository description.
  subOptions at: 'no-flush' ifAbsent: [ repository flushCache ].
  subOptions
    at: 'onConflict'
    ifPresent: [ :arg | onConflict := arg asSymbol ]
    ifAbsent: [ onConflict := #'useIncoming' ].
  subOptions at: 'onDowngrade' ifPresent: [ :arg | onDowngrade := arg asSymbol ].
  subOptions
    at: 'onLock'
    ifPresent: [ :arg | onLock := arg asSymbol ]
    ifAbsent: [ onLock := #'honor' ].
  subOptions at: 'onUpgrade' ifPresent: [ :arg | onUpgrade := arg asSymbol ].
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
  registration loads
    ifNotNil: [ :loadList | 
      loads := loadList.
      loads isArray
        ifFalse: [ loads := loads asArray ] ]
    ifNil: [ loads := {'default'} ].
  subOptions at: 'loads' ifPresent: [ :arg | loads := loads , arg evaluate ].
  subOptions
    at: 'no-get'
    ifPresent: [ :ignored | doGet := false ]
    ifAbsent: [ doGet := true ].
  subOptions
    at: 'deploy'
    ifPresent: [ :arg | gsDeployerOption := arg asSymbol ]
    ifAbsent: [ gsDeployerOption := #'bulk' ].
  projectLoadSpec := TDMetacelloToolProjectLoadSpec new
    projectName: registration projectName;
    doGet: doGet;
    gsDeployer: gsDeployerOption;
    projectSelector: projectSelector;
    repositoryDescription: description;
    projectClassName: projectClassName;
    loads: loads;
    version: configurationVersion;
    onConflict: onConflict;
    onDowngrade: onDowngrade;
    onLock: onLock;
    onUpgrade: onUpgrade;
    ignoreImage: ignoreImage;
    silently: silently;
    cacheRepository: cacheRepository;
    overrides: repositoryOverrides;
    yourself.
  ^ self projectLoadFromSpec: projectLoadSpec