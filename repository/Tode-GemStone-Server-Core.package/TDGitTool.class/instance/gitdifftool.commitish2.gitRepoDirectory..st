as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory
  | result records |
  result := self
    performGitCommand: 'diff'
    in: gitRepoDirectory
    with: '--raw'
    logging: false.
  records := self parseRawDiffFiles: result.
  records isEmpty
    ifTrue: [ ^ 'No diffs' ]