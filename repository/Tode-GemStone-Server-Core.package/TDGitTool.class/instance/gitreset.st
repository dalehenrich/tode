as yet unclassified
gitreset
  "
  git reset `git-command-args` [ <git-repo-path> ]
      reset `git-command-args` [ @<git-repo-directory> ]
"

  | response |
  response := self performGitCommand: 'reset' requiredCommandArgs: 0.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response