as yet unclassified
itemSelected: topez
  self asTDClassDefinition
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'hierarchyList')
        windowName: #'hierarchy';
        yourself).
  ^ nil