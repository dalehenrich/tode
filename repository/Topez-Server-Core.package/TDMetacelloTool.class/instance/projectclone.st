project
projectclone
  "
  project clone [--https] [--gitRoot=<git-root-dir>] ( <project-name> | @<project-reference> )
"

  | registration projectName cloneWithSSH gitRootPath |
  self
    getSubcommandOptsMixedLongShort:
      {#('https' nil #'none').
      #('gitRoot' nil #'required')}.
  options
    at: 'https'
    ifPresent: [ :ingored | cloneWithSSH := false ]
    ifAbsent: [ cloneWithSSH := true ].
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  options
    at: 'gitRoot'
    ifPresent: [ :dirPath | gitRootPath := dirPath ]
    ifAbsent: [ gitRootPath := registration gitRootPath ].
  ^ self
    projectClone: registration
    cloneWithSSH: cloneWithSSH
    gitRootPath: gitRootPath