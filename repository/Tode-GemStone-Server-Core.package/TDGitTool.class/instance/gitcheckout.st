as yet unclassified
gitcheckout
  "git checkout `git-command-args` [ <git-repo-path> ]
       checkout `git-command-args` [ @<git-repo-directory> ]
	"

  | response |
  response := self performGitCommand: 'checkout' requiredCommandArgs: 2.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response