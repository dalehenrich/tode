as yet unclassified
gitclone
  "
   git clone `git-command-args`  <git-root-path> 
       clone `git-command-args` @<git-root-directory>
	"

  | response gitRootDirectory gitPathArg args |
  args := tokens at: 2.
  gitPathArg := tokens at: 3.
  gitRootDirectory := (gitPathArg beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: gitPathArg ]
    ifFalse: [ ServerFileDirectory on: gitPathArg ].
  response := self gitcloneIn: gitRootDirectory with: args.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ response