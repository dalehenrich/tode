as yet unclassified
findManPage
  ^ 'NAME
  find - search for matching classes and methods (class, method, sender, rmethod, rsender, source, versions)

SYNOPSIS
  find class <regex-pattern>
  find amethod <method-spec> 
  find method [#]<selector>
  find methods <method-spec> <method-spec>
  find references <variableOrGlobalNameOrPathRef>
  find rmethod <regex-pattern>
  find rsender <regex-pattern>
  find sender [#]<selector>
  find source <regex-pattern>
  find versions <method-spec>

DESCRIPTION
  <method-spec>
    Object>>methodSelector
    Object class>>methodSelector

  <variableOrGlobalNameOrPathRef>
    <identifier>
    @<path>

  use `#` in front of selector to distinquish from shell operator (`>`).
'