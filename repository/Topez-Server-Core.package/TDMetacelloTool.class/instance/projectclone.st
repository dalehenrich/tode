project
projectclone
  "
  project clone [--https] [--shared|--stone] [--gitRoot=<git-root-dir>] \
                [--checkout=<branch-tag-SHA>] ( <project-name> | @<project-reference> ) 
  project clone [--https] [--gitRoot=<git-root-dir>] [--checkout=<branch-tag-SHA>]
                --projects --github=<github-user-name>/<github-repository>
"

  | registration projectName cloneWithSSH projectEntryPath gitRootPath checkout |
  self
    getSubcommandOptsMixedLongShort:
      {#('https' nil #'none').
      #('gitRoot' nil #'required').
      #('checkout' nil #'required').
      #('github' nil #'required').
      #('projects' nil #'none').
      #('shared' nil #'none').
      #('stone' nil #'none')}.
  subOptions
    at: 'https'
    ifPresent: [ :ignored | cloneWithSSH := false ]
    ifAbsent: [ cloneWithSSH := true ].
  subOptions
    at: 'checkout'
    ifPresent: [ :commitish | checkout := commitish ]
    ifAbsent: [ checkout := registration gitCommit ].
  subOptions
    at: 'project'
    ifPresent: [ 
      | githubUserAndProject |
      subOptions
        at: 'github'
        ifPresent: [ :arg | githubUserAndProject := arg findTokens: '/' ]
        ifAbsent: [ self error: '--github option required with --projects option' ].
      gitRootPath := subOptions
        at: 'gitRoot'
        ifPresent: [ :dirPath | dirPath ]
        ifAbsent: [ '$GS_HOME/projects' ].
      self
        projectCloneGitHubUser: (githubUserAndProject at: 1)
        project: (githubUserAndProject at: 2)
        cloneWithSSH: cloneWithSSH
        gitRootDir: (ServerFileDirectory on: gitRootPath)
        checkout: checkout ]
    ifAbsent: [ 
      projectName := subArguments at: 1.
      registration := self resolveProjectRegistrationReference: projectName.
      subOptions
        at: 'shared'
        ifPresent: [ :ignored | 
          projectEntryPath := '/sys/local/server/projects/'.
          gitRootPath := TDProjectEntryDefinition defaultGitRootPath ]
        ifAbsent: [ 
          projectEntryPath := '/sys/stone/projects/'.
          gitRootPath := '$GS_SERVER_STONES/' , self topez serverStoneName
            , '/git' ].
      subOptions at: 'gitRoot' ifPresent: [ :dirPath | gitRootPath := dirPath ].
      self
        projectClone: registration
        cloneWithSSH: cloneWithSSH
        projectEntryPath: projectEntryPath
        gitRootPath: gitRootPath
        checkout: checkout ]