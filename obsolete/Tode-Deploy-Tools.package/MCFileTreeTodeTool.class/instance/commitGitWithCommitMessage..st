as yet unclassified
commitGitWithCommitMessage: commitMessage
  self performGitCommand: 'commit -a -m"' , commitMessage , '"'