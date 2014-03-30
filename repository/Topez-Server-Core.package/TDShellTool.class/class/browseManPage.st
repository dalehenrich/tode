as yet unclassified
browseManPage
  ^ 'NAME
  browse - view class and method search results (see find)

SYNOPSIS
  browse [--scriptPath[=<tode-path>]] browse-command [<browse-arguments>]

  browse method [@filter-block-path][--spec|[--regex|-r]] <method-spec> 
  ------
  browse amethod <method-spec>
  browse method [#]<selector>  
  browse rmethod <regex-pattern> [@filter-block-path]

  browse [--scriptPath[=<tode-path>]] sender [@filter-block-path][--pure|[--regex|-r]] <method-spec>
  ------
  browse [--scriptPath=<tode-path>] psender [#]<selector>
  browse [--scriptPath=<tode-path>] rsender <regex-pattern> [@filter-block-path]
  browse [--scriptPath=<tode-path>] sender [#]<selector> [@filter-block-path]

  browse class [--hier|--full] <class-name>
  ------
  browse class <regex-pattern>
  browse hierarchy <class-name>

  browse category <regex-pattern>
  browse diff <method-spec-1> <method-spec-2>
  browse list <definitionList-path> [@filter-block-path]
  browse package <package-name>
  browse project <project-name>
  browse [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef> [@filter-block-path]
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
  browse method at:put: 
  browse method --spec Dictionary>>at:put:
  browse method -r at\:put\: 
  browse method --filter=@filter at:put: 
  --
  browse sender at:put: 
  browse sender --pure at:put:
  browse sender -r at\:put\: 
  browse --scriptPath sender at:put: 
  browse sender --filter=@filter at:put: 
  --
  browse class method
  browse class --hier method
  browse class --full GsMethod
'