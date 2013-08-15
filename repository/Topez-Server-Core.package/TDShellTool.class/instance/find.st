as yet unclassified
find
  "
  find amethod <method-spec> 
  find class <regex-pattern>
  find hierarchy <class-name>
  find method [#]<selector>
  find methods <method-spec-1> <method-spec-2>
  find project <project-name>
  find references <variableOrGlobalNameOrPathRef>
  find rmethod <regex-pattern>
  find rsender <regex-pattern>
  find sender [#]<selector>
  find source <regex-pattern>
  find versions <method-spec>
"

  | findTokens |
  findTokens := tokens copyFrom: 2 to: tokens size.
  ^ self find: findTokens