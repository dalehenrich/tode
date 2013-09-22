as yet unclassified
clshistory
  "
  cls history <class-name>
      history @<class-path>
"

  | clsName classDefs |
  clsName := tokens at: 2.
  (clsName beginsWith: '@')
    ifTrue: [ 
      | oldClass |
      oldClass := self resolveAtPathReference: clsName.
      clsName := oldClass name asString ].
  classDefs := self clshistory: clsName.
  classDefs
    editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList').
  ^ classDefs