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
  self
    scanHomeDirForProjects: [ :projectEntry | 
      | registration |
      (map at: projectEntry projectName ifAbsent: [  ])
        ifNil: [ map at: projectEntry projectName put: projectEntry createProjectListRegistration ]
        ifNotNil: [ :registration | registration entry: projectEntry ] ].
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