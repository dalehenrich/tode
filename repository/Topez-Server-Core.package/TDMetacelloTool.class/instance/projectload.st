project
projectload
  "
  project load [--loads=<load-expression>] \
               [--no-flush] [--no-get] \
               [ (--baseline | --configuration --version=<version> ) ] \
               [--repository=<repository-reference>] \
               [--onConflict=useIncoming|useExisting] \
               [--onDowngrade=useIncoming|useExisting] \
               [--onLock=break|honor] \
               [--onUpgrade=useIncoming|useExisting] \
               [--ignoreImage] [--silently] \
               [--cacheRepository=@<repository-reference>] \
               [--repositoryOverrides=@<repository-reference>] \
               <project-name>
"

  | projectName registration description loads loaded projectSelector metacello configurationVersion onConflict onDowngrade onLock onUpgrade ignoreImage silently cacheRepository repositoryOverrides |
  self
    getSubcommandOptsMixedLongShort:
      {#('baseline' nil #'none').
      #('cacheRepository' nil #'required').
      #('configuration' nil #'none').
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
  registration := self projectRegistrationFor: projectName.
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
    at: 'loads'
    ifPresent: [ :arg | loads := arg evaluate ]
    ifAbsent: [ loads := 'default' ].
  subOptions
    at: 'no-get'
    ifAbsent: [ 
      self
        projectGet: projectName
        selector: projectSelector
        repositoryDescription: description ].
  ^ self
    projectLoad: projectName
    selector: projectSelector
    repositoryDescription: description
    loads: loads
    version: configurationVersion
    onConflict: onConflict
    onDowngrade: onDowngrade
    onLock: onLock
    onUpgrade: onUpgrade
    ignoreImage: ignoreImage
    silently: silently
    cacheRepository: cacheRepository
    repositoryOverrides: repositoryOverrides