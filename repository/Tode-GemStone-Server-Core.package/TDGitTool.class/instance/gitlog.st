as yet unclassified
gitlog
  "git log [ `git-command-args` [ <git-repo-path> ]]
       log [ `git-command-args` [ @<git-repo-directory> ]]
	"

  | response |
  response := self performGitCommand: 'log' defaultArgs: '-10'.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response