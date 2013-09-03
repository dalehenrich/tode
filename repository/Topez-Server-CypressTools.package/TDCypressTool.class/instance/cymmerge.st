as yet unclassified
cymmerge
  "cym merge <head-commit> <merge-commit> @<repository-path>"

  "in reality, for cypress we are going to have to use the git merge capabilities and parse the working tree files that have conflicts (see git ls-files -u)"

  "clone repo into /tmp, checkout head commit, merge merge commit"

  | headCommit mergeCommit cypressRepository gitTool tmpRepoPath tmpRepository |
  headCommit := tokens at: 2.
  mergeCommit := tokens at: 3.
  cypressRepository := self resolveAtPathReference: (tokens at: 4).
  gitTool := self topez toolInstanceFor: 'git'.
  tmpRepoPath := '/tmp/tode/merge'.
  tmpRepository := ServerFileDirectory on: tmpRepoPath.
  tmpRepository exists
    ifTrue: [ tmpRepository recursiveDelete ].
  tmpRepository assureExistence.
  gitTool
    performOnServer:
        'cd ' , tmpRepoPath , '; git clone -l -n ' , cypressRepository fullName , ' '
            , tmpRepoPath;
    performGitCommand: 'checkout' in: tmpRepository with: headCommit