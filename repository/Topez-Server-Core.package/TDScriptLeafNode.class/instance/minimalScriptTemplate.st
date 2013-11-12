as yet unclassified
minimalScriptTemplate
  ^ '[ :topez :objIn :tokens :command | 
| opts args |
"for help: ./'
    , self name
    ,
      ' -h"
command
  getOptsMixedLongShort:
    {#(''help'' $h #''none'').
    #(''option'' $o #''required'')}
  optionsAndArguments: [ :options :operands | 
    opts := options.
    args := operands ].
opts
  at: ''option''
  ifAbsent: [ 
    "iption not specified ... what is the default action?"
     ]
  ifPresent: [ :optValue | 
    "do something with  optionValue"
     ].
opts
  at: ''help''
  ifAbsent: [ 
    "script body ... executed only when help option not specified"
    args
      do: [ :arg | 
        "do something with operands ... if present"
         ] ]
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
      ' [-h|--help] [-o|--option=<something>] <operand>
DESCRIPTION
EXAMPLES
  ./'
    , self name
    ,
      ' --help
  ./' , self name
    ,
      ' -h

  ./' , self name
    ,
      ' --option=something operand
  ./' , self name
    ,
      ' -o something -- operand
''
      topez: topez ] ]'