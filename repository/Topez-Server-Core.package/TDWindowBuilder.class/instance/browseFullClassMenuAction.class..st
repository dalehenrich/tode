menu actions
browseFullClassMenuAction: listElement class: cls
  "browse hierarchy <cls>"

  cls asTDClassDefinition
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'hierarchyList')
        parentObject: listElement parent;
        windowName: #'hierarchy';
        yourself).
  ^ true