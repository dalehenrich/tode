browse
browseClasses: classDefs label: windowLabel
  classDefs isEmpty
    ifTrue: [ 
      self inform: 'No matching definitions found'.
      ^ classDefs ].
  classDefs
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'definitionList')
        windowLabel: windowLabel;
        yourself).
  ^ classDefs