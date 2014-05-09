project
projectprime
  "
  project prime [--force]
  project prime <project-pattern>...
"

  | shellTool |
  self getSubcommandOptsMixedLongShort: {#('force' nil #'none')}.
  subArguments isEmpty
    ifTrue: [ 
      subOptions
        at: 'force'
        ifPresent: [ :ignored | MetacelloProjectRegistration resetRegistry ].
      ^ MetacelloProjectRegistration primeRegistryFromImage ].
  shellTool := self topez toolInstanceFor: 'find'.
  subArguments
    do: [ :projectName | 
      | registration gitRepoDirectory |
      registration := shellTool findProjectRegistrationExact: projectName.
      gitRepoDirectory := self gitRepoDirForRegistration: registration.
      self primeVersionString: registration gitRepoDirectory: gitRepoDirectory ]