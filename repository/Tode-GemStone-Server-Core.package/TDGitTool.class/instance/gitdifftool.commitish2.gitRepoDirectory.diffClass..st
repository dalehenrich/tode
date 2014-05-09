as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory diffClass: diffClass
  | result records diffs |
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
      diff := diffClass new
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
  ^ diffs