project
projectclone
  "
  project clone [--https] [--shared|--stone] [--gitRoot=<git-root-dir>] \
                [--checkout=<branch-tag-SHA>]
                ( <project-name> | @<project-reference> )
"

  | registration projectName cloneWithSSH projectEntryPath gitRootPath checkout |
  self
    getSubcommandOptsMixedLongShort:
      {#('https' nil #'none').
      #('gitRoot' nil #'required').
      #('checkout' nil #'required').
      #('shared' nil #'none').
      #('stone' nil #'none')}.
  subOptions
    at: 'https'
    ifPresent: [ :ingored | cloneWithSSH := false ]
    ifAbsent: [ cloneWithSSH := true ].
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  subOptions
    at: 'shared'
    ifPresent: [ :ignored | 
      projectEntryPath := '/sys/local/server/projects/'.
      gitRootPath := TDProjectEntryDefinition defaultGitRootPath ]
    ifAbsent: [ 
      projectEntryPath := '/sys/stone/projects/'.
      gitRootPath := '$GS_SERVER_STONES/' , self topez serverStoneName , '/git' ].
  subOptions at: 'gitRoot' ifPresent: [ :dirPath | gitRootPath := dirPath ].
  subOptions
    at: 'checkout'
    ifPresent: [ :commitish | checkout := commitish ]
    ifAbsent: [ checkout := registration gitCommit ].
  ^ self
    projectClone: registration
    cloneWithSSH: cloneWithSSH
    projectEntryPath: projectEntryPath
    gitRootPath: gitRootPath
    checkout: checkout