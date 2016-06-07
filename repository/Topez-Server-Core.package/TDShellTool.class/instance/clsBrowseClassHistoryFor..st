cls
clsBrowseClassHistoryFor: theClass
  | classDefs |
  classDefs := self clshistory: theClass.
  classDefs isEmpty
    ifTrue: [ 
      self inform: 'No class history for ' , theClass name asString.
      ^ classDefs ].
  classDefs
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'definitionList')
        windowLabel: 'Class History for ' , theClass name asString;
        yourself).
  ^ classDefs