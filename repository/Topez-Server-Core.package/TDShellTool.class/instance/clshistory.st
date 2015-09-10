cls
clshistory
  "
  cls history [--hier] [( <class-name> | @<class-path> )...]
"

  | clsRef theClass |
  self getSubcommandOptsMixedLongShort: {#('hier' nil #'none')}.
  clsRef := subArguments at: 1.
  theClass := self resolveClassReference: clsRef.
  ^ subOptions
    at: 'hier'
    ifAbsent: [ self clsBrowseClassHistoryFor: theClass ]
    ifPresent: [ :ignored |  ]