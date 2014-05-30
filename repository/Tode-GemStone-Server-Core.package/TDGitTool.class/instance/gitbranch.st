as yet unclassified
gitbranch
  "
  git branch `git-command-args` [ <git-repo-path> ]
      branch `git-command-args` [ @<git-repo-directory> ]
"

  | response |
  response := self performGitCommand: 'branch' requiredCommandArgs: 0.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response