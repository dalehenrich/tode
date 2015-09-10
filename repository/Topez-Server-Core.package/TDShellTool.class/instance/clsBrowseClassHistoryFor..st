cls
clsBrowseClassHistoryFor: theClass
  | classDefs |
  classDefs := self clshistory: theClass.
  classDefs
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'definitionList')
        windowLabel: 'Class History for ' , theClass name asString;
        yourself).
  ^ classDefs