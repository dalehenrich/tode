browse
browseClassHierarchy: aClass label: windowLabel
  ^ aClass asTDClassDefinition
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'hierarchyList')
        windowName: #'hierarchy';
        windowLabel: windowLabel;
        yourself)