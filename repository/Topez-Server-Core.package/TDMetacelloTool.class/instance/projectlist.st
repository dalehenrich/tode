project
projectlist
  "
  project list [--inspect|-i] [<project-pattern>]...
"

  | shellTool block list |
  self getSubcommandOptsMixedLongShort: {#('inspect' $i #'none')}.
  shellTool := self topez toolInstanceFor: 'find'.
  block := [ 
  list := (shellTool findProjectDefinitions: '.') asArray
    sort: [ :a :b | a configurationName <= b configurationName ] ].
  subOptions
    at: 'inspect'
    ifPresent: [ :ignored | ^ (block value collect: [ :def | def projectSpec ]) inspect ]
    ifAbsent: [ 
      ^ (TDMetacelloProjectBrowser new
        topez: topez;
        mpTool: self;
        projectBlock: block;
        windowLabel: 'Projects';
        yourself) open ]