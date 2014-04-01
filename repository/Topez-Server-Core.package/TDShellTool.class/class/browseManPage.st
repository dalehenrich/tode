as yet unclassified
browseManPage
  ^ 'NAME
  browse - view class and method search results (see find)

SYNOPSIS
  browse [--scriptPath[=<tode-path>]] browse-command [<browse-arguments>]

  browse method [--filter=@filter-block-path] <selector>...
  browse method [--filter=@filter-block-path] --regex <method-pattern>...
  browse method [--filter=@filter-block-path] --spec <method-spec>...
  ------
  browse amethod <method-spec>
  browse method [#]<selector>  
  browse rmethod <regex-pattern> [@filter-block-path]

  browse [--scriptPath[=<tode-path>]] sender [--filter=@filter-block-path] <selector>...
  browse [--scriptPath[=<tode-path>]] sender [--filter=@filter-block-path][--pure] <selector>...
  browse [--scriptPath[=<tode-path>]] sender [--filter=@filter-block-path][--regex]] <selector-pattern>...
  ------
  browse [--scriptPath=<tode-path>] psender [#]<selector>
  browse [--scriptPath=<tode-path>] rsender <regex-pattern> [@filter-block-path]
  browse [--scriptPath=<tode-path>] sender [#]<selector> [@filter-block-path]

  browse class [--hier] <class-name-pattern>...
  browse class -full <class-name>
  ------
  browse class <regex-pattern>
  browse hierarchy <class-name>

  browse [--scriptPath=<tode-path>] references [--filter=@filter-block-path] [--global] <global-name>...
  browse references [--filter=@filter-block-path] [--class=<class-name>] --literal=String|Symbol|Number|Array|ByteArray <literal>... 
  browse references [--filter=@filter-block-path] --class=<class-name> <variableName>
------
  browse [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef> [@filter-block-path]

  browse category <regex-pattern>
  browse diff <method-spec-1> <method-spec-2>
  browse list <definitionList-path> [@filter-block-path]
  browse package <package-name>
  browse project <project-name>
  browse [--scriptPath=<tode-path>] source <regex-pattern> [@filter-block-path]
  browse symbolList <regex-pattern>
  browse versions <method-spec>

DESCRIPTION
  <definitionList-path> :: path to collection of TDDefinitions
    .
    ../implementors
    /home/impelementors

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
  browse method at:put: nextPutAll:
  browse method --spec Dictionary>>at:put: `Dictionary class>>new:`
  browse method --regex at\:put\:|nextPutAll\:
  browse method --filter=@filter at:put: 
  --
  browse sender at:put: 
  browse sender --pure at:put:
  browse sender --regex at\:put\: 
  browse --scriptPath sender at:put: 
  browse sender --filter=@filter at:put: 
  --
  browse class method stream
  browse class --hier method|stream
  browse class --full GsNMethod

  browse references GsNMethod
  browse --scriptPath references GsNMethod
  browse references --filter=@filter GsNMethod
  browse references --literal=String `not yet implemented`
  browse references --literal=Symbol nextPut:
  browse references --literal=Number 1.0
  browse references --literal=Array `#( 1 2 3)`
  browse references --literal=ByteArray #[ 1 2 3]`
  browse references --class=ClassOrganizer hierarchy
  browse references --global UserGlobals
'