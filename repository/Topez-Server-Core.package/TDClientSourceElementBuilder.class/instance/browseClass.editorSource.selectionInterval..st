menu actions
browseClass: sourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-b - browse class"

  | selection parser regex classes defs |
  selection := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  parser := RxParser safelyParse: selection.
  parser ifNil: [ ^ false ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  classes := Smalltalk systemNavigation allClasses asArray
    select: [ :cls | regex search: cls name asString ].
  defs := classes collect: [ :cl | TDClassDefinition className: cl name ].
  defs
    editUsing:
      (TDEditorSpec topez: sourceElement topez editorAspect: #'definitionList').
  ^ true