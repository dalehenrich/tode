as yet unclassified
gitcommit
  "git commit `git-command-args` [ <git-repo-path> ]
       commit `git-command-args` [ @<git-repo-directory> ]
	"

  | response |
  response := self performGitCommand: 'commit' requiredCommandArgs: 2.
  response editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ response