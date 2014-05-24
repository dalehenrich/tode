cls
clshistory
  "
  cls history ( <class-name> | @<class-path> )
"

  | clsRef theClass classDefs |
  self getSubcommandOptsMixedLongShort: {}.
  clsRef := subArguments at: 1.
  theClass := self resolveClassReference: clsRef.
  classDefs := self clshistory: theClass.
  classDefs
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'definitionList')
        windowLabel: 'Class History for ' , theClass name asString;
        yourself).
  ^ classDefs