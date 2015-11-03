project
projectlist
  "
  project list [--inspect|-i] [--all] [<project-pattern>]...
"

  | block |
  self
    getSubcommandOptsMixedLongShort:
      {#('inspect' $i #'none').
      #('all' nil #'none')}.
  block := [ 
  | list |
  list := self projectRegistrationDefinitionList.
  subOptions
    at: 'all'
    ifAbsent: [ 
      "string out the GLASS configurations"
      list := list
        reject: [ :projectDef | 
          projectDef isConfigurationBased
            ifTrue: [ 
              #('ConfigurationOfGLASS' 'ConfigurationOfGsCore' 'ConfigurationOfGsMisc' 'ConfigurationOfGsMonticello' 'ConfigurationOfGsOB' 'ConfigurationOfGsSqueakCommon' 'ConfigurationOfMetacelloPreview' 'ConfigurationOfGoferProjectLoader')
                includes: projectDef configurationClassName ]
            ifFalse: [ false ] ] ].
  list ].
  subOptions
    at: 'inspect'
    ifPresent: [ :ignored | ^ (block value collect: [ :def | def projectSpec ]) inspect ]
    ifAbsent: [ 
      ^ (TDMetacelloProjectBrowser new
        topez: topez;
        projectTool: self;
        projectBlock: block;
        windowLabel: 'Projects';
        yourself) open ]