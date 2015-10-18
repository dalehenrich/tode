project
projectclone
  "
  project clone [--https] [--shared|--stone] [--gitRoot=<git-root-dir>] ( <project-name> | @<project-reference> )
"

  | registration projectName cloneWithSSH projectEntryPath gitRootPath |
  self
    getSubcommandOptsMixedLongShort:
      {#('https' nil #'none').
      #('gitRoot' nil #'required').
      #('local' nil #'required').
      #('stone' nil #'required')}.
  options
    at: 'https'
    ifPresent: [ :ingored | cloneWithSSH := false ]
    ifAbsent: [ cloneWithSSH := true ].
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  options
    at: 'shared'
    ifPresent: [ :ignored | 
      projectEntryPath := '/sys/local/projects/'.
      gitRootPath := TDProjectEntryDefinition defaultGitRootPath ]
    ifAbsent: [ 
      projectEntryPath := '/sys/stone/projects/'.
      gitRootPath := '$GS_HOME/gemstone/stones/' , self topez serverStoneName
        , '/git' ].
  options at: 'gitRoot' ifPresent: [ :dirPath | gitRootPath := dirPath ].
  ^ self
    projectClone: registration
    cloneWithSSH: cloneWithSSH
    projectEntryPath: projectEntryPath
    gitRootPath: gitRootPath