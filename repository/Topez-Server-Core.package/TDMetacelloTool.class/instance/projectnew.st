project
projectnew
  "
  project new [--force] [--stone | --local | --gitRoot=<git-root-dir>] \
              [--package=<package-name>] [--class] <project-name>
"

  | projectName gitRootPath packageName applicationClassCreationBlock projectEntryPath force |
  self
    getSubcommandOptsMixedLongShort:
      {#('gitRoot' nil #'required').
      #('package' nil #'required').
      #('class' nil #'none').
      #('force' nil #'none').
      #('stone' nil #'none')}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project new` for more details' ].
  subOptions
    at: 'force'
    ifPresent: [ :ignored | force := true ]
    ifAbsent: [ force := false ].
  subOptions
    at: 'stone'
    ifPresent: [ :ignored | 
      projectEntryPath := TDProjectEntryDefinition sys_stone_projects.
      gitRootPath := '$GS_SERVER_STONES/' , self topez serverStoneName , '/git' ]
    ifAbsent: [ 
      projectEntryPath := TDProjectEntryDefinition sys_local_server_projects.
      gitRootPath := TDProjectEntryDefinition defaultGitRootPath ].
  subOptions at: 'gitRoot' ifPresent: [ :dirPath | gitRootPath := dirPath ].
  subOptions
    at: 'package'
    ifPresent: [ :name | packageName := name ]
    ifAbsent: [ packageName := projectName , '-Core' ].
  applicationClassCreationBlock := subOptions
    at: 'class'
    ifPresent: [ :ignored | 
      | clsTool |
      clsTool := topez toolInstanceFor: 'cls'.
      [ :superClassName :className :pName | 
      | template |
      template := self class
        newClassTemplateFor: superClassName
        subclass: className
        category: pName.
      clsTool clsInteractiveCreateSubclassWithTemplate: template ] ]
    ifAbsent: [ [ :superClassName :className :pName |  ] ].
  ^ self
    projectNew: projectName
    projectEntryPath: projectEntryPath
    packageName: packageName
    gitRootPath: gitRootPath
    applicationClassCreationBlock: applicationClassCreationBlock
    force: force