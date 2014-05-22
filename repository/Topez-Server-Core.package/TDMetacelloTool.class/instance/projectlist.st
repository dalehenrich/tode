project
projectlist
  "
  project list [--inspect|-i] [<project-pattern>]...
"

  | block |
  self getSubcommandOptsMixedLongShort: {#('inspect' $i #'none')}.
  block := [ self projectRegistrationDefinitionList ].
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