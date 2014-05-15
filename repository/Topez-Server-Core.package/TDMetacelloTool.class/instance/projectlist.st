project
projectlist
  "
  project list [--inspect|-i] [<project-pattern>]...
"

  | shellTool block |
  self getSubcommandOptsMixedLongShort: {#('inspect' $i #'none')}.
  shellTool := self topez toolInstanceFor: 'find'.
  block := [ 
  | map |
  map := Dictionary new.
  (shellTool findProjectRegistrationDefinitions: '')
    do: [ :reg | map at: reg projectName put: reg ].
  self findProjectExtensionNodes
    do: [ :extension | 
      | registration |
      (map at: extension projectName ifAbsent: [  ])
        ifNil: [ map at: extension projectName put: extension createProjectRegistration ]
        ifNotNil: [ :registration | registration extension: extension ] ].
  self sortRegistrationList: map values asArray ].
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