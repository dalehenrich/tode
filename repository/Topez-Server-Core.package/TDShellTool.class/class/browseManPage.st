as yet unclassified
browseManPage
  ^ 'NAME
  browse - view class and method search results (see find)

SYNOPSIS
  browse amethod <method-spec>
  browse class <regex-pattern>
  browse diff <method1-spec> <method2-spec>
  browse method [#]<selector>
  browse references <variableOrGlobalNameOrPathRef>
  browse rmethod <regex-pattern>
  browse rsender <regex-pattern>
  browse sender [#]<selector>
  browse source <regex-pattern>
  browse versions <method-spec>

DESCRIPTION
  <method-spec>
    Object>>methodSelector
    Object class>>methodSelector

  <variableOrGlobalNameOrPathRef>
    <identifier>
    @<path>  

  use `#` in front of selector to distinquish from shell operator (`>`).
'