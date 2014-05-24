as yet unclassified
gitlogFilePath: filePath limit: limit gitRepoDirectory: gitRepoDirectory
  ^ self
    gitlogIn: gitRepoDirectory
    with: '--date=relative --format="%h %cd %s"  -- ' , filePath