as yet unclassified
gitpush
  "git push `git-command-args` [ <git-repo-path> ]
       push `git-command-args` [ @<git-repo-directory> ]
	"

  | response |
  response := self performGitCommand: 'push' requiredCommandArgs: 2.
  response editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ response