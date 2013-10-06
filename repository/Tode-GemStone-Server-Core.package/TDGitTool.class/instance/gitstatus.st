as yet unclassified
gitstatus
  "git status [ `git-command-args` [ <git-repo-path> ]]
       status [ `git-command-args` [ @<git-repo-directory> ]]
	"

  | response |
  response := self performGitCommand: 'status' defaultArgs: ''.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response