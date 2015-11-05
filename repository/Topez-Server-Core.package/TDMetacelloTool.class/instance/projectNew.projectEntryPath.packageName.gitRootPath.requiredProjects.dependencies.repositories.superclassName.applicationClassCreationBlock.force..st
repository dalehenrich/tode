project api
projectNew: projectName projectEntryPath: projectEntryPath packageName: packageName gitRootPath: gitRootPath requiredProjects: requiredProjects dependencies: dependencies repositories: repositories superclassName: superclasName applicationClassCreationBlock: applicationClassCreationBlock force: force
  | gitRepoDir gitTool projectRepoPath projectEntry mcTool wc registration baselinePackageName matches |
  gitRepoDir := ServerFileDirectory on: gitRootPath , '/' , projectName.
  gitRepoDir exists
    ifTrue: [ 
      force
        ifTrue: [ gitRepoDir containingDirectory deleteDirectory: projectName ]
        ifFalse: [ 
          self
            error:
              'The directory: ' , (gitRootPath , '/' , projectName) printString
                ,
                  ' already exists. Delete the directory or use the --force option' ] ].
  gitRepoDir assureExistence.
  gitRepoDir createDirectory: 'repository'.
  gitTool := topez toolInstanceFor: 'git'.
  projectRepoPath := gitRepoDir fullName , '/repository'.
  projectEntry := TDProjectSpecEntryDefinition new.
  projectEntry
    baseline: projectName
      repository: 'filetree://' , projectRepoPath
      loads: #('default');
    status: #(#'active');
    locked: true.
  projectEntry createProjectEntryInNode: projectEntryPath topez: self topez.
  mcTool := topez toolInstanceFor: 'mc'.
  baselinePackageName := 'BaselineOf' , projectName.
  self
    projectNewCheckForPackage: baselinePackageName
    for: projectEntry
    mcTool: mcTool
    force: force.
  self
    projectNewCheckForPackage: packageName
    for: projectEntry
    mcTool: mcTool
    force: force.
  (Smalltalk classNamed: baselinePackageName)
    ifNotNil: [ :cls | 
      force
        ifTrue: [ 
          cls removeFromSystem
            ifFalse: [ 
              self
                error:
                  'The class: ' , baselinePackageName printString
                    ,
                      ' has subclasses and could not be removed from the system.' ] ]
        ifFalse: [ 
          self
            error:
              'The class: ' , baselinePackageName printString
                , ' already exists, Delete the class or use the --force option' ] ].
  self
    createBaselineOf: projectName
    requiredProjects: requiredProjects
    dependencies: dependencies
    repositories: repositories
    withPackageNamed: packageName.
  applicationClassCreationBlock
    value: superclasName
    value: projectName
    value: packageName.
  gitTool gitinitIn: gitRepoDir with: ''.
  registration := self resolveProjectRegistrationReference: projectName.
  self
    projectCommit: registration
    configCommit: false
    gitCommit: true
    commitMessage: 'initial commit'.
  MetacelloProjectRegistration
    registrationForProjectSpec: registration projectSpec
    ifAbsent: [ :new | self error: 'New project spec unexpectedly unregistered' ]
    ifPresent: [ :existing :new | 
      "register as a loaded project"
      existing
        copyOnWrite: [ :existingCopy | 
          existingCopy
            loadedInImage: true;
            merge: new ] ]