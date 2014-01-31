as yet unclassified
browseManPage
  ^ 'NAME
  browse - view class and method search results (see find)

SYNOPSIS
  browse [--scriptPath=<tode-path>] browse-command [<browse-arguments>]
  browse amethod <method-spec>
  browse category <regex-pattern>
  browse class <regex-pattern>
  browse diff <method-spec-1> <method-spec-2>
  browse hierarchy <class-name>
  browse list <definitionList-path> [@filter-block-path]
  browse method [#]<selector>  [@filter-block-path]
  browse package <package-name>
  browse project <project-name>
  browse [--scriptPath=<tode-path>] psender [#]<selector>
  browse [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef> [@filter-block-path]
  browse rmethod <regex-pattern> [@filter-block-path]
  browse [--scriptPath=<tode-path>] rsender <regex-pattern> [@filter-block-path]
  browse [--scriptPath=<tode-path>] sender [#]<selector> [@filter-block-path]
  browse [--scriptPath=<tode-path>] source <regex-pattern> [@filter-block-path]
  browse symbolList <regex-pattern>
  browse versions <method-spec>

DESCRIPTION
  <definitionList-path> :: path to collection of TDDefinitions
    .
    ../implementors
    /home/impelementors

  <method-spec> :: method specification
    Object>>methodSelector
    Object class>>methodSelector

  <regex-pattern> :: regular expression pattern

  <selector> :: method selector (use `#` in front of selector to disambiguate from shell operator (`>`)).
    yourself
    at:put:
    #>

  <variableOrGlobalNameOrPathRef> :: global name
    <identifier>
    @<path>  
'