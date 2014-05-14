as yet unclassified
minimalScriptTemplate
  ^ '[ :topez :objIn :tokens :command :commandNode | 
| opts args |
"for help: ./'
    , self name
    ,
      ' -h"
command
  getOptsMixedLongShort: {#(''help'' $h #''none'')}
  optionsAndArguments: [ :options :operands | 
    opts := options.
    args := operands ].
opts
  at: ''help''
  ifAbsent: [ "WRITE SCRIPT HERE" ]
  ifPresent: [ :ignored | 
    TDManPage
      viewManPage:
        ''NAME
  '
    , self name , ' - ' , self name
    ,
      ' sript utility template
SYNOPSIS
  ' , self name
    ,
      ' [-h|--help]
DESCRIPTION
EXAMPLES
  ./' , self name
    ,
      ' --help
  ./' , self name
    ,
      ' -h
''
      topez: topez ] ]'