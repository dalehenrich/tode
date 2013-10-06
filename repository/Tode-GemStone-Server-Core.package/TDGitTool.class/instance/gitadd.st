as yet unclassified
gitadd
  "git add [ `git-command-args` [ <git-repo-path> ]]
       add [ `git-command-args` [ @<git-repo-directory> ]]
	"

  | response |
  response := self performGitCommand: 'add' defaultArgs: '.'.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response