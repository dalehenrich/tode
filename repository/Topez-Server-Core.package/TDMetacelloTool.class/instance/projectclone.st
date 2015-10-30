project
projectclone
  "
  project clone [--https] [--local|--stone] [--gitRoot=<git-root-dir>] \
                [--checkout=<branch-tag-SHA>] ( <project-name> | @<project-reference> ) 
  project clone [--https] [--gitRoot=<git-root-dir>] [--checkout=<branch-tag-SHA>]
                --etc --github=<github-user-name>/<github-repository>
"

  | registration cloneWithSSH defaultProjectEntryPath gitRootPath checkout githubUserAndProject |
  self
    getSubcommandOptsMixedLongShort:
      {#('https' nil #'none').
      #('gitRoot' nil #'required').
      #('checkout' nil #'required').
      #('github' nil #'required').
      #('etc' nil #'none').
      #('local' nil #'none').
      #('stone' nil #'none')}.
  subOptions
    at: 'https'
    ifPresent: [ :ignored | cloneWithSSH := false ]
    ifAbsent: [ cloneWithSSH := true ].
  subOptions
    at: 'etc'
    ifPresent: [ 
      subOptions
        at: 'github'
        ifPresent: [ :arg | githubUserAndProject := arg findTokens: '/' ]
        ifAbsent: [ self error: '--github option required with --projects option' ].
      gitRootPath := subOptions
        at: 'gitRoot'
        ifPresent: [ :dirPath | dirPath ]
        ifAbsent: [ '$GS_HOME/etc' ].
      subOptions
        at: 'checkout'
        ifPresent: [ :commitish | checkout := commitish ]
        ifAbsent: [ checkout := nil ].
      self
        projectCloneGitHubUser: (githubUserAndProject at: 1)
        project: (githubUserAndProject at: 2)
        cloneWithSSH: cloneWithSSH
        gitRootDir: (ServerFileDirectory on: gitRootPath)
        checkout: checkout ]
    ifAbsent: [ 
      | projectName |
      subOptions
        at: 'stone'
        ifPresent: [ :ignored | 
          defaultProjectEntryPath := '/sys/stone/projects/'.
          gitRootPath := '$GS_SERVER_STONES/' , self topez serverStoneName
            , '/git' ]
        ifAbsent: [ 
          "--local ... fefault"
          defaultProjectEntryPath := '/sys/local/server/projects/'.
          gitRootPath := TDProjectEntryDefinition defaultGitRootPath ].
      subOptions at: 'gitRoot' ifPresent: [ :dirPath | gitRootPath := dirPath ].
      projectName := subArguments at: 1.
      registration := self resolveProjectRegistrationReference: projectName.
      subOptions
        at: 'checkout'
        ifPresent: [ :commitish | checkout := commitish ]
        ifAbsent: [ checkout := registration gitCheckout ].
      self
        projectClone: registration
        cloneWithSSH: cloneWithSSH
        defaultProjectEntryPath: defaultProjectEntryPath
        gitRootPath: gitRootPath
        checkout: checkout ]