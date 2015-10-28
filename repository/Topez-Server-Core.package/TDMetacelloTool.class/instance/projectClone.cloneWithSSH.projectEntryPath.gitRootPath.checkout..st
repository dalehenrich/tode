project api
projectClone: registration cloneWithSSH: cloneWithSSH projectEntryPath: projectEntryPath gitRootPath: gitRootPath checkout: checkout
  | gitRootDir githubRepo repositoryDirPath projectDir projectDirPath githubPath pathElements versionElement versionComponents githubSha gitTool response githubUserAndProject gitRepoDirectory gitProjectName cloneUrl gitRepoDir |
  gitRootDir := ServerFileDirectory on: gitRootPath.
  gitTool := topez toolInstanceFor: 'git'.
  registration isLocked
    ifTrue: [ 
      self inform: 'Registration is locked ... clone not performed'.
      ^ self ].
  registration canBeCloned
    ifFalse: [ 
      registration hasGitRepository
        ifFalse: [ self error: 'Cannot clone a repository that does not use git' ].
      gitRepoDir := registration gitRepoDirectory.
      [ 
      gitTool gitrevparseShowTopLevelIn: gitRepoDir.	"if this command returns then a git repository is already present in gitRootDir ... which is a good thing"
      self
        inform:
          'A git repo is already present at ' , gitRepoDir fullName printString.
      self
        reregisterClonedProject: registration
        repositoryDescription: registration repositoryDescription
        projectEntryPath: projectEntryPath.
      ^ self ]
        on: Error
        do: [ :ignored | 
          self
            error:
              'Expected a git repository to present in the directory: '
                , gitRepoDir fullName printString ] ].
  githubRepo := registration cloneProjectSpec repository createRepository.
  repositoryDirPath := githubRepo directory fullName.
  projectDir := MCGitHubRepository cacheDirectoryFor: githubRepo projectPath.
  projectDirPath := (projectDir directoryNamed: githubRepo projectVersion)
    fullName.
  (repositoryDirPath beginsWith: projectDirPath)
    ifFalse: [ self error: 'repository path does not match project path ... cannot continue' ].
  githubPath := repositoryDirPath
    copyFrom: projectDirPath size + 2
    to: repositoryDirPath size.
  pathElements := githubPath findTokens: '/'.
  versionElement := pathElements at: 1.
  versionComponents := versionElement findTokens: '-'.
  githubSha := versionComponents last.
  githubUserAndProject := githubRepo projectPath findTokens: '/'.
  gitProjectName := githubUserAndProject at: 2.
  self
    projectCloneGitHubUser: (githubUserAndProject at: 1)
    project: gitProjectName
    cloneWithSSH: cloneWithSSH
    gitRootDir: (ServerFileDirectory on: gitRootPath)
    checkout: checkout.
  self
    reregisterClonedProject: registration
    repositoryDescription:
      'filetree://' , gitRootPath , '/' , gitProjectName , '/' , githubRepo repoPath
    projectEntryPath: projectEntryPath.
  registration isLoadedInImage
    ifTrue: [ registration versionInfo versionString: githubSha ]