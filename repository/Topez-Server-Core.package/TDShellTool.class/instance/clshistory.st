cls
clshistory
  "
  cls history <class-name>
      history @<class-path>
"

  | clsName theClass classDefs |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  classDefs := self clshistory: theClass.
  classDefs
    editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList').
  ^ classDefs