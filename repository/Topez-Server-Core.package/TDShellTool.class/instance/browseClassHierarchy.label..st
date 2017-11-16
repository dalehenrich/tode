browse
browseClassHierarchy: aClass label: windowLabel
  true
    ifTrue: [ 
      ^ (aClass asTDClassDefinition
        appEnv: self applicationEnvironment;
        yourself)
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'classicHierarchyList')
            windowName: #'hierarchy';
            windowLabel: windowLabel;
            yourself) ]
    ifFalse: [ 
      ^ (aClass asTDClassDefinition
        appEnv: self applicationEnvironment;
        yourself)
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'hierarchyList')
            windowName: #'hierarchy';
            windowLabel: windowLabel;
            yourself) ]