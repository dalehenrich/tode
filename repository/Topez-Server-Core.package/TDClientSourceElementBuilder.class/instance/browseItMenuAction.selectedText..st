menu actions - Search
browseItMenuAction: sourceElement selectedText: selection
  | parser regex classes defs |
  parser := RxParser safelyParse: selection.
  parser ifNil: [ ^ false ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  classes := Smalltalk systemNavigation allClasses asArray
    select: [ :cls | regex search: cls name asString ].
  defs := classes collect: [ :cl | TDClassDefinition className: cl name ].
  defs
    editUsing:
      ((TDEditorSpec topez: sourceElement topez editorAspect: #'definitionList')
        windowLabel: selection;
        yourself).
  ^ true