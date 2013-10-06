as yet unclassified
gitfetch
  "git fetch `git-command-args` [ <git-repo-path> ]
       fetch `git-command-args` [ @<git-repo-directory> ]
	"

  | response |
  response := self performGitCommand: 'fetch' requiredCommandArgs: 2.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response