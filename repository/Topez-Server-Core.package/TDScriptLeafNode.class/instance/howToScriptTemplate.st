as yet unclassified
howToScriptTemplate
  ^ '[ :topez :objIn :tokens :command :commandNode | 
| opts args result |
"for help: ./'
    , self name
    ,
      ' -h"
result := WriteStream on: String new.
command
  getOptsMixedLongShort:
    {#(''help'' $h #''none'').
    #(''optional'' $o #''optional'').
    #(''required'' $r #''required'')}
  optionsAndArguments: [ :options :operands | 
    opts := options.
    args := operands ].
opts
  at: ''optional''
  ifPresent: [ :optionalArg | 
    result
      cr;
      nextPutAll:
          ''''''optional'''' option specified with the value: '' , optionalArg printString ].
opts
  at: ''required''
  ifPresent: [ :requiredArg | 
    result
      cr;
      nextPutAll:
          ''''''required'''' option specified with the value: '' , requiredArg printString ].
args
  do: [ :arg | 
    result
      cr;
      nextPutAll: ''command line argument: '' , arg printString ].
opts
  at: ''help''
  ifPresent: [ :ignored | 
    result
      cr;
      nextPutAll: ''''''help'''' option specified''.
    TDManPage viewManPage: ''NAME
  '
    , self name
    ,
      ' - template script utility
SYNOPSIS
  ' , self name
    ,
      ' [-h|--help]
      [-o [<optional-arg>]][--optional[=<optional-arg>]]
      [-r <required-arg>][-required=<required-arg>>]
      [operands]
DESCRIPTION
  This is a template for a tODE script utility. Rewrite this help text and change 
  the arg handling for your own script. Always provide a help option for your 
  scripts that describes what the script does and the available options.

  The options are defined by a collection of literal arrays for each option that 
  looks like this: 

    #(''''help'''' $h #''''none'''')

  The first slot defines the option name and GNU-style long option name. The second
  slot defines the option character. The third slot is either #none, #required,
  or #optional and defines whether or not option arguments are expected.

  See http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for 
  tips on documenting utility syntax.

  See http://www.gnu.org/software/libc/manual/html_node/Getopt.html#Getopt for
  information on the GetOpts implementation.
EXAMPLES
  No Option Values
  ----------------
  The `help` option can be invoked with the `-h` option:

    ./'
    , self name
    ,
      ' -h

  or with the GNU-style long option:

    ./' , self name
    ,
      ' --help

  In either case, if the option is set, the key is present in the options 
  dictionary

  Optional Option Values
  ----------------------
  The `optional` option can be sepecified in the following ways:

    ./'
    , self name
    ,
      ' --optional
    ./' , self name
    ,
      ' --optional=optionalArgValue
    ./' , self name
    ,
      ' -o
    ./' , self name
    ,
      ' -o optionalArgValue

  If an #optional argument is specified the key will be present in the options 
  dictionary and the value of the key will be `nil` or the value of the options
  argument.

  Required Option Values
  ----------------------
  A #required argument can be specified in the following ways:

    ./'
    , self name
    ,
      ' --required=requiredArgValue
    ./' , self name
    ,
      ' -r requiredArgValue
    ./' , self name
    ,
      ' -rrequiredArgValue

  If a #required option is specified, then the key will be present in the options
  dictionary and the value will be the argument value.

  Operands
  --------
  Operands may be specified in the following ways:

    ./'
    , self name
    ,
      ' -h -o -- arg1 arg2
    ./' , self name
    ,
      ' --optional --help arg1 arg2

  If operands are supplied they appear in the operands collection.
'' topez: topez ].
result contents ]'