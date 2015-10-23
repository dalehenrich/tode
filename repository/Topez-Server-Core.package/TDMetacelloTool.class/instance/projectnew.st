project
projectnew
  "
  project new [--shared | --stone | --gitRoot=<git-root-dir>] \
              [--package=<package-name>] [--class] <project-name>
"

  | projectName gitRootPath packageName classCreationBlock projectEntryPath |
  self
    getSubcommandOptsMixedLongShort:
      {#('gitRoot' nil #'required').
      #('package' nil #'required').
      #('class' nil #'none').
      #('shared' nil #'none').
      #('stone' nil #'none')}.
  projectName := subArguments at: 1.
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
    at: 'package'
    ifPresent: [ :name | packageName := name ]
    ifAbsent: [ packageName := projectName , '-Core' ].
  classCreationBlock := subOptions
    at: 'class'
    ifPresent: [ :ignored | 
      | clsTool |
      clsTool := topez toolInstanceFor: 'cls'.
      [ :pName :superClassName | clsTool clsInteractiveCreateSubclassOf: superClassName category: pName ] ]
    ifAbsent: [ [ :pName :superClassName |  ] ].
  ^ self
    projectNew: projectName
    projectEntryPath: projectEntryPath
    gitRootPath: gitRootPath
    classCreationBlock: classCreationBlock