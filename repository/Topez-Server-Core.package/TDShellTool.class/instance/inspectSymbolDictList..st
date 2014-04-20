browse
inspectSymbolDictList: symbolList
  "
  browse symbolDict --list [--user=<user-id>] 
"

  | list |
  subArguments size > 0
    ifTrue: [ ^ TodeCommandError signal: 'No arguments allowed when using --list option' ].
  list := self filterBrowseList: symbolList.
  ^ list asArray inspect