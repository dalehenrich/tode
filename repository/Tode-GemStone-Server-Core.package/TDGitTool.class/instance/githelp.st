as yet unclassified
githelp
  "git help [ `git-command-args` [ <git-repo-path> ]]
       help [ `git-command-args` [ @<git-repo-directory> ]]
	"

  | response |
  response := self performGitCommand: 'help'.
  response editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ response