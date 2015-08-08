manPages
findManPage
  | manPage |
  manPage := TDManPage
    commandName: 'find'
    fromString:
      'NAME
  find - Find classes and methods

SYNOPSIS
  find [--scriptPath=<node-path>] [--help] <command> [<args>]

DESCRIPTION
  Find is the primary command for finding classes and methods.  	

  The <command> is the name of a Find command that invokes a 
  specific search.

  Commands:
    category       Find list of class definitions in a category
    configurations Find list of configuration definitions
    class          Find list of class definitions
    method         Find list of method definitions matching patterns
    package        Find list of class definitions in a package
    packages       Find list of package definitions
    project        Find list of class definitions in a project
    references     Find list of method definitions referencing certain artifacts
    sender         Find list of method definitions sending particular messages
    source         Find and view strings in method source 
    symbolDict     Find and view a list of classes in a symbol dictionary
    undeclared     View references to undeclared symbols
    variables      Find and view references to instance, class instance and class variables
    versions       Find and view versions of a method

  Use `find --help <command>` to read about a specific subcommand.

  In general the Find commands implement the search functionality for the 
  corresponding `browse` command..

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

  --scriptPath=<node-path>
    Start the search for sender, references, and source at the given node-path. 
    All nodes reachable from the given node will be searched. 
    TDScriptLeafNodes and TDSmalltalkLeafNodes will be searched for sender 
    and references. The contents for all nodes will be searched for source.

EXAMPLES
  find --help references

  find category topez-server tode
  find category --exact Topez-Server-Core
  find category --hier --exact Topez-Server-Core

  find class method stream
  find class --exact GsNMethod
  find class --hier method|stream

  find configurations

  find method at:put: nextPutAll:
  find method --spec Dictionary>>at:put: `Dictionary class>>new:`
  find method --regex at\:put\:|nextPutAll\:

  find package topez-server tode
  find package --exact Topez-Server-Core

  find packages

  find project tode rb
  find project --exact Tode

  find references GsNMethod
  find references --literal `''not yet implemented''`
  find references --literal `#at:put:`
  find references --literal `1.0`
  find references --literal `#( 1 2 3)`
  find references --literal `#[ 1 2 3]`
  find references --class=ClassOrganizer hierarchy
  find references --global UserGlobals

  find sender at:put: 
  find sender --pure at:put:
  find sender --regex at\:put\: 

  find source --exact `Hello World`
  find source --exact --noCase `hello world`
  find source `hello world`
  find source --case `Hello wWrld`

  find symbolDict --user=SystemUser UserGlobals
  find symbolDict --list --user=SystemUser
  find symbolDict --user=SystemUser
  find symbolDict --globals --user=SystemUser Globals

  find undeclared 

  find variables --class=TDShellTool listLimit

  find versions `Dictionary class>>new:`

  find --scriptPath references --literal `1.0`
  find --scriptPath=~/tode references --literal `1.0`
  find --scriptPath --select=`[:node | ''Tool'' asRegex search: node name ]` references --literal `1.0`
  find --scriptPath sender at:put:
  find --scriptPath source `for help`

  find --select=@filter method at:put: 
  find --select=`[:def | ''Tool'' asRegex search: def label ]` category tode
'.
  manPage subCommands
    at: 'category' put: self findcategoryManPage;
    at: 'class' put: self findclassManPage;
    at: 'configurations' put: self findconfigurationsManPage;
    at: 'method' put: self findmethodManPage;
    at: 'package' put: self findpackageManPage;
    at: 'packages' put: self findpackagesManPage;
    at: 'project' put: self findprojectManPage;
    at: 'references' put: self findreferencesManPage;
    at: 'sender' put: self findsenderManPage;
    yourself.
  ^ manPage