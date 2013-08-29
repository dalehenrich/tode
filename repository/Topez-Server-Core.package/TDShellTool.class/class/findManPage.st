as yet unclassified
findManPage
  ^ 'NAME
  find - search for matching classes and methods (class, method, sender, rmethod, rsender, source, versions)

SYNOPSIS
  find amethod <method-spec> 
  find categories
  find category <regex-pattern>
  find class <regex-pattern>
  find hierarchy <class-name>
  find method [#]<selector>
  find methods <method-spec-1> <method-spec-2>
  find package <package-name>
  find project <project-name>
  find psender [#]<selector>
  find references <variableOrGlobalNameOrPathRef>
  find rmethod <regex-pattern>
  find rsender <regex-pattern>
  find sender [#]<selector>
  find source <regex-pattern>
  find symbolList <regex-pattern>
  find symbolLists
  find versions <method-spec>

DESCRIPTION
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