as yet unclassified
checkout: branchName andUpdateGitRepos: updateGitRepos
  updateGitRepos
    ifTrue: [ self performGitCommand: 'fetch origin ' ].
  self performGitCommand: 'checkout ' , branchName.
  updateGitRepos
    ifTrue: [ self performGitCommand: 'pull origin ' , branchName ]