as yet unclassified
mrBrowseGitVersionsFor: packageName in: repo ifAbsent: absentPackageBlock
  | packageNames packageInfo gitTool gitRepoDir commitLog |
  packageInfo := self mrpackageNamesIn: repo.
  packageNames := packageInfo at: 1.
  (packageNames includes: packageName)
    ifFalse: [ ^ absentPackageBlock value ].
  gitTool := self topez toolInstanceFor: 'git'.
  gitRepoDir := gitTool resolveDefaultGitRepoDirectory.
  commitLog := gitTool
    gitlogIn: gitRepoDir
    with:
      '--pretty=format:"commit %H%nabbrev %h%ncommitter %cn%ncommitDate %ct%nsubject %s%n--body%n%b--body%n" -- repository/'
        , packageName , '.package/monticello.meta/version'.
  ^ commitLog