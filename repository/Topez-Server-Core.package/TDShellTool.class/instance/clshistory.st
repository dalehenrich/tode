cls
clshistory
  "
  cls history ( <class-name> | @<class-path> )
"

  | clsRef theClass |
  self getSubcommandOptsMixedLongShort: {}.
  clsRef := subArguments at: 1.
  theClass := self resolveClassReference: clsRef.
  ^ self clsBrowseClassHistoryFor: theClass