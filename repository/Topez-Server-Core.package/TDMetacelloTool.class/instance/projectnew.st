project
projectnew
  "
  project new [--stone | --gitRoot=<git-root-dir>] \
              [--package=<package-name>] [--class] <project-name>
"

  | projectName gitRootPath packageName applicationClassCreationBlock projectEntryPath |
  self
    getSubcommandOptsMixedLongShort:
      {#('gitRoot' nil #'required').
      #('package' nil #'required').
      #('class' nil #'none').
      #('stone' nil #'none')}.
  projectName := subArguments at: 1.
  subOptions
    at: 'stone'
    ifPresent: [ :ignored | 
      projectEntryPath := '/sys/stone/projects/'.
      gitRootPath := '$GS_SERVER_STONES/' , self topez serverStoneName , '/git' ]
    ifAbsent: [ 
      projectEntryPath := '/sys/local/server/projects/'.
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
      template := superClassName , ' subclass: ' , className printString
        ,
          '
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''''
	category: '
        , pName printString.
      clsTool clsInteractiveCreateSubclassWithTemplate: template ] ]
    ifAbsent: [ [ :superClassName :className :pName |  ] ].
  ^ self
    projectNew: projectName
    projectEntryPath: projectEntryPath
    packageName: packageName
    gitRootPath: gitRootPath
    applicationClassCreationBlock: applicationClassCreationBlock