project
projectdelete
  "
  project delete <project-name>
"

  | projectName registration metacelloRegistration version specs workingCopies |
  self getSubcommandOptsMixedLongShort: {}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project browse` for details.' ].
  registration := self projectRegistrationFor: projectName ifAbsent: [ ^ self ].
  registration entry
    ifNotNil: [ :entry | 
      | entryNode |
      "delete project entry"
      entryNode := topez lookup: entry projectPath , entry projectNodeName.
      entryNode rm ].
  registration hasGitRepository
    ifTrue: [ 
      registration gitRepoDirectory exists
        ifTrue: [ 
          | gitRoot fullName |
          gitRoot := registration gitRootDirectory.
          fullName := gitRoot fullName.
          ((System gemEnvironmentVariable: 'GS_HOME') = fullName
            or: [ (System gemEnvironmentVariable: 'GS_SERVER') = fullName ])
            ifTrue: [ 
              "GsDevKit_home git root, not a local clone --- just delete repo dir"
              registration gitRepoDirectory recursiveDelete ]
            ifFalse: [ gitRoot recursiveDelete ] ] ].
  registration isLoadedInImage
    ifFalse: [ ^ self ].
  metacelloRegistration := registration registration.
  version := metacelloRegistration projectVersion.
  workingCopies := (version spec packageSpecsInLoadOrder
    collect: [ :packageSpec | packageSpec workingCopy ])
    reject: [ :each | each isNil ].
  workingCopies do: [ :wc | wc unload ].	"unload all loaded packages in reverse load order"
  registration workingCopies
    do: [ :wc | 
      (wc class registry includesKey: wc package)
        ifTrue: [ 
          "sepaate out  the previously unloaded packages"
          wc unload ] ]	"unload the BaselineOf and or ConfigurationOf"