actions
gitPackageHistory: listElement selectedIndex: index
  | wc packageDef configDef registration gitTool gitRepo packageName filePath gitDirectory commitLog commitish repoDirName |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  packageName := wc packageName.
  packageDef := TDMcPackageDefinition new packageName: packageName.
  configDef := packageDef configurationOf.
  configDef ifNil: [ ^ false ].
  registration := configDef projectRegistrationDef.
  registration ifNil: [ ^ false ].
  registration hasGitRepository
    ifFalse: [ ^ false ].
  gitTool := listElement topez toolInstanceFor: 'git'.
  gitRepo := registration repository.
  repoDirName := wc metacelloPackageNameWithBranch at: 2.
  filePath := 'repository/' , repoDirName , '.package'.
  gitDirectory := registration gitRootDirectory.
  commitLog := gitTool
    gitlogFilePath: filePath
    limit: 100
    gitRepoDirectory: gitDirectory.
  commitish := registration versionString.
  (TDGitRawHistoryBrowser new
    topez: listElement topez;
    source: commitish;
    destination: commitish;
    rawCommitLog: commitLog gitRepoDirectory: gitDirectory;
    logItemSelectedBlock: [ :listEl :rawHistoryBrowser :sha | 
          | operation |
          rawHistoryBrowser
            sourceWindowId:
              ((listEl topez toolInstanceFor: 'git')
                gitfiletreeChangestool: sha
                filePath: filePath
                gitRepoDirectory: gitDirectory
                windowId: rawHistoryBrowser sourceWindowId
                windowLabel: 'Changes for [' , sha , '] ' , repoDirName) ];
    windowLabel: 'History for ' , repoDirName;
    yourself) open.
  ^ true