as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory
  | result records diffs differ diffTool |
  result := self
    performGitCommand: 'diff'
    in: gitRepoDirectory
    with: '--raw ' , commitish1 , ' ' , commitish2
    logging: false.
  records := self parseRawDiffFiles: result.
  records isEmpty
    ifTrue: [ ^ 'No diffs' ].
  diffs := records
    collect: [ :ar | 
      | diff operations path |
      operations := ar at: 5.
      path := operations at: 2.
      diff := TDGitDiff new
        baseDirectory: gitRepoDirectory;
        filePath: path;
        local:
            (self
                gitFileContents: path
                commitish: (ar at: 3)
                gitRepoDirectory: gitRepoDirectory);
        remote:
            (self
                gitFileContents: path
                commitish: (ar at: 4)
                gitRepoDirectory: gitRepoDirectory);
        yourself ].
  differ := TDGitDiffer new diffs: diffs.
  diffTool := topez toolInstanceFor: 'mg'.
  diffTool gitdiff: differ gitTool: self