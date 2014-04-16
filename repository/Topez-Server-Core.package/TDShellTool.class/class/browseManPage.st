as yet unclassified
browseManPage
  ^ 'NAME
  browse - view class and method search results (see find)

SYNOPSIS
  browse class [--filter=<filter-spec>] [--hier] <class-name-pattern>...
  browse class [--filter=<filter-spec>] [--hier] --exact <class-name>...
  browse class --full <class-name>
  browse class [--filter=<filter-spec>] [--hier] [--user=<user-name>] --symbolDict <symbol-dictionary-name>...
  browse class [--filter=<filter-spec>] [--hier] --category <category-name-pattern>...
  browse class [--filter=<filter-spec>] [--hier] --exact --category <category-name>...

  browse diff <method-spec-1> <method-spec-2>

  browse list <definitionList-path>...

  browse method [--filter=<filter-spec>] <selector>...
  browse method [--filter=<filter-spec>] --regex|-r <method-pattern>...
  browse method [--filter=<filter-spec>] --spec <method-spec>...

  browse package <regex-pattern>
  browse package --exact <package-name>

  browse project <regex-pattern>
  browse project --exact <project-name>

  browse [--scriptPath=<tode-path>] references [--filter=<filter-spec>] [--global] <global-name>...
  browse [--scriptPath=<tode-path>] references [--filter=<filter-spec>] [--class=<class-name>] --literal  <literal>... 
  browse [--scriptPath=<tode-path>] references [--filter=<filter-spec>] --class=<class-name> <variableName>

  browse [--scriptPath[=<tode-path>]] sender [--filter=<filter-spec>] <selector>...
  browse [--scriptPath[=<tode-path>]] sender [--filter=<filter-spec>][--pure] <selector>...
  browse [--scriptPath[=<tode-path>]] sender [--filter=<filter-spec>][--regex]] <selector-pattern>...

  browse [--scriptPath=<tode-path>] source [--filter=<filter-spec>] <regex-pattern>
  browse [--scriptPath=<tode-path>] source [--filter=<filter-spec>] --exact <source-string>

  browse versions <method-spec>
DESCRIPTION
  <definitionList-path> :: path to collection of TDDefinitions
    .
    ../implementors
    /home/impelementors

  <filter-spec> :: filter specification
    @/home/tode/filter
    `[:definition | true ]`

  <method-spec> :: method specification
    methodSelector
    className>>methodSelector
    className class>>methodSelector

  <regex-pattern> :: regular expression pattern

  <selector> :: method selector (use `#` in front of selector to disambiguate from shell operator (`>`)).
    yourself
    at:put:
    #>

  <variableOrGlobalNameOrPathRef> :: global name
    <identifier>
    @<path> 

EXAMPLES
  browse class method stream
  browse class --exact GsNMethod
  browse class --hier method|stream
  browse class --full GsNMethod
  browse class --user=SystemUser --symbolDict UserGlobals
  browse class --category topez-server tode
  browse class --category --exact Topez-Server-Core

  browse diff TDShellTool>>findMethods: `TDShellTool class>>browse`

  browse list /tmp/sessionTemps/methodDefinitions

  browse method at:put: nextPutAll:
  browse method --spec Dictionary>>at:put: `Dictionary class>>new:`
  browse method --regex at\:put\:|nextPutAll\:
  browse method --filter=./filter at:put: 

  browse package topez-server tode
  browse package --exact Topez-Server-Core

  browse project tode rb
  browse project --exact Tode

  browse references GsNMethod
  browse --scriptPath references GsNMethod
  browse references --filter=./filter GsNMethod
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
  browse --scriptPath sender at:put: 
  browse sender --filter=./filter at:put: 

  browse source --filter=./filter `hello world`
  browse source --exact `hello world`

  browse versions `Dictionary class>>new:`
'