browse
browseManPage
  | manPage |
  manPage := TDManPage
    commandName: 'browse'
    fromString:
      'NAME
  browse - Find and view classes and methods

SYNOPSIS
  browse [--scriptPath=<node-path>] [--help] --select=<select-block> 
         [--staticList] <command> [<args>]

DESCRIPTION
  Browse is the primary command for finding a viewing classes 
  and methods.  	

  The <command> is the name of a Browse command that invokes a 
  specific development tool.

  Commands:
    category   Find and view lists of classes in a category
    class      Find and view lists of classes 
    diff       View differences between two methods
    list       View method definitions loaded from nodes
    method     Find and view lists of methods matching patterns
    package    Find and vew lists of classes in a package
    project    Find and vew lists of classes in a project
    references Find and view lists of methods referencing certain artifacts
    sender     Find and view lists of methods sending particular messages
    source     Find and view strings in method source 
    symbolDict Find and view a list of classes in a symbol dictionary
    undeclared View references to undeclared symbols
    variables  Find and view references to instance, class instance and class variables
    versions   Find and view versions of a method

  Use `browse --help <command>` to read about a specific subcommand.

  In general the Browse commands are available in popup menus under the `Browse` 
  submenu.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

  --scriptPath=<node-path>
    Start the search for sender, references, and source at the given node-path. 
    All nodes reachable from the given node will be searched. 
    TDScriptLeafNodes and TDSmalltalkLeafNodes will be searched for sender 
    and references. The contents for all nodes will be searched for source.

  --select=<select-block>
    The select-block is applied agains the list of classes before opening the 
    window. The select-block may be an in-line definition of a select block:

      --select=`[:def | ''Tool'' asRegex search: def label ]`

    or it may refer to a block defined in a TDSmalltalkNode. For example the 
    following code may be save in a smalltalk node (for example, 
    /tmp/sessionTemps/selectBlock):

      [ :def | 
        def configurationOf
        ifNil: [ false ]
        ifNotNil: [ :configurationDef | 
          configurationDef configurationName = ''Tode'' ] ]

    and referenced from the command line as:

      --select=@/tmp/sessionTemps/selectBlock

    If the --scriptPath option is used the argument to the select block will 
    be an instance of a TDNode, otherwise the argument will be an instance of
    TDDefinition.

  --staticList
    By default, all searches performed by browse commands are re-calculated
    whenever the window is refreshed (CMD-L or CMD-C, etc.). However, when the
    --staticList option is present, the search is performed only once.

EXAMPLES
  browse --help references

  browse category topez-server tode
  browse category --exact Topez-Server-Core
  browse category --hier --exact Topez-Server-Core

  browse class method stream
  browse class --exact GsNMethod
  browse class --hier method|stream
  browse class --full GsNMethod

  browse diff TDShellTool>>findMethods: `TDShellTool class>>browse`

  browse list /tmp/sessionTemps/methodDefinitions

  browse method at:put: nextPutAll:
  browse method --spec Dictionary>>at:put: `Dictionary class>>new:`
  browse method --regex at\:put\:|nextPutAll\:

  browse package topez-server tode
  browse package --exact Topez-Server-Core

  browse project tode rb
  browse project --exact Tode

  browse references GsNMethod
  browse references --literal `''not yet implemented''`
  browse references --literal `#at:put:`
  browse references --literal `1.0`
  browse references --literal `#( 1 2 3)`
  browse references --literal `#[ 1 2 3]`
  browse references --class=ClassOrganizer hierarchy
  browse references --global UserGlobals

  browse sender at:put: 
  browse sender --pure at:put:
  browse sender --regex at\:put\: 

  browse source --exact `hello world`

  browse symbolDict --user=SystemUser UserGlobals
  browse symbolDict --list --user=SystemUser
  browse symbolDict --user=SystemUser
  browse symbolDict --globals --user=SystemUser Globals

  browse undeclared 

  browse variables --class=TDShellTool listLimit

  browse versions `Dictionary class>>new:`

  browse --scriptPath references --literal `1.0`
  browse --scriptPath=~/tode references --literal `1.0`
  browse --scriptPath --select=`[:node | ''Tool'' asRegex search: node name ]` references --literal `1.0`
  browse --scriptPath sender at:put:
  browse --scriptPath source `for help`

  browse --select=@filter method at:put: 
  browse --select=`[:def | ''Tool'' asRegex search: def label ]` category tode
'.
  manPage subCommands
    at: 'class' put: self browseclassManPage;
    at: 'category' put: self browsecategoryManPage;
    at: 'symbolDict' put: self browsesymbolDictManPage;
    at: 'diff' put: self browsediffManPage;
    at: 'method' put: self browsemethodManPage;
    at: 'package' put: self browsepackageManPage;
    at: 'list' put: self browselistManPage;
    at: 'project' put: self browseprojectManPage;
    at: 'references' put: self browsereferencesManPage;
    at: 'sender' put: self browsesenderManPage;
    at: 'source' put: self browsesourceManPage;
    at: 'undeclared' put: self browseundeclaredManPage;
    at: 'variables' put: self browsevariablesManPage;
    at: 'versions' put: self browseversionsManPage;
    yourself.
  ^ manPage