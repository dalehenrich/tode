project api
projectNew: projectName projectEntryPath: projectEntryPath packageName: packageName gitRootPath: gitRootPath requiredProjects: requiredProjects dependencies: dependencies repositories: repositories superclassName: superclasName applicationClassCreationBlock: applicationClassCreationBlock
  | gitRepoDir gitTool projectRepoPath projectEntry mcTool wc registration |
  gitRepoDir := ServerFileDirectory on: gitRootPath , '/' , projectName.
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
  wc := mcTool mccreate: 'BaselineOf' , projectName.
  wc modified: true.
  wc repositoryGroup addRepository: projectEntry repository.
  wc := mcTool mccreate: packageName.
  wc modified: true.
  wc repositoryGroup addRepository: projectEntry repository.
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
      existing
        copyOnWrite: [ :existingCopy | 
          existingCopy
            loadedInImage: true;
            merge: new ] ]	"register as a loaded project"