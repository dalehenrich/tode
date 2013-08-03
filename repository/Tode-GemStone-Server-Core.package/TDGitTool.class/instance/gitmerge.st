as yet unclassified
gitmerge
  "git merge `git-command-args` [ <git-repo-path> ]
       merge `git-command-args` [ @<git-repo-directory> ]
	"

  | response |
  response := self performGitCommand: 'merge' requiredCommandArgs: 2.
  response editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ response