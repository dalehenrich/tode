menu actions
browseGitMethodVersionsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute methodDef configDef gitTool filePath commitish gitDirectory registration gitRepo packageDef packageName classExtension metaDirName methodFilename commitLog |
  itemAttribute := listElement itemCache at: selectionIndex.
  methodDef := itemAttribute object.
  configDef := methodDef configurationOf.
  configDef ifNil: [ ^ false ].
  registration := configDef projectRegistrationDef.
  registration ifNil: [ ^ false ].
  registration hasGitRepository
    ifFalse: [ ^ false ].
  packageDef := methodDef packageOf.
  packageName := packageDef packageName.
  gitTool := listElement topez toolInstanceFor: 'git'.
  gitRepo := registration repository.
  classExtension := '.class'.
  (methodDef methodProtocol beginsWith: '*')
    ifTrue: [ classExtension := '.extension' ].
  metaDirName := 'instance'.
  methodDef isMeta
    ifTrue: [ metaDirName := 'class' ].
  methodFilename := MCFileTreeStCypressWriter
    fileNameForSelector: methodDef selector.
  filePath := 'repository/' , packageName , '.package' , '/'
    , methodDef className asString , classExtension , '/' , metaDirName , '/'
    , methodFilename , '.st'.
  gitDirectory := registration gitRootDirectory.
  commitLog := gitTool
    gitlogFilePath: filePath
    limit: 100
    gitRepoDirectory: gitDirectory.
  commitish := registration versionString.
  (TDGitRawHistoryBrowser new
    topez: listElement topez;
    commitish1: commitish;
    commitish2: commitish;
    rawCommitLog: commitLog gitRepoDirectory: gitDirectory;
    logItemSelectedBlock: [ :listEl :rawHistoryBrowser :sha | 
          | diffs |
          diffs := (listEl topez toolInstanceFor: 'git')
            gitdifftool: sha , '^'
            commitish2: sha
            filePath: filePath
            gitRepoDirectory: gitDirectory
            diffClass: TDFileTreeDiff.
          diffs size > 1
            ifTrue: [ self error: 'Unexpected diffs size: ' , diffs size printString ].
          self
            displayObject: (diffs at: 1)
            listElement: listEl
            label: 'Changes for [' , sha , '] ' , methodDef label ];
    windowLabel: 'History for ' , methodDef label;
    yourself) open.
  ^ true