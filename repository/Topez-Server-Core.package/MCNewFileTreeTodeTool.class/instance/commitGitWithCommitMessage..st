as yet unclassified
commitGitWithCommitMessage: message
  | gitTool commitMessageFileName |
  gitTool := self gitTool.
  commitMessageFileName := gitTool createTmpFileWith: message.
  gitTool gitcommitIn: self tmpGitDir with: '-a --file=' , commitMessageFileName