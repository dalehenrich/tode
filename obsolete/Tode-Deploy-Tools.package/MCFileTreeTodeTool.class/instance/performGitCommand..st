as yet unclassified
performGitCommand: gitCommand
  | gitPath commandBase command ans |
  Transcript
    cr;
    show: '->' , gitCommand.
  gitPath := self gitPath.
  commandBase := 'git --git-dir ' , gitPath , '/.git --work-tree ' , gitPath.
  command := commandBase , ' ' , gitCommand.
  ans := self performOnServer: command.
  Transcript
    cr;
    show: ans.
  ^ ans