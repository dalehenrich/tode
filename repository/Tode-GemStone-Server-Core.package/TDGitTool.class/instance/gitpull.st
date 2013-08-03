as yet unclassified
gitpull
  "git pull `git-command-args` [ <git-repo-path> ]
       pull `git-command-args` [ @<git-repo-directory> ]
	"

  | response |
  response := self performGitCommand: 'pull' requiredCommandArgs: 2.
  response editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ response