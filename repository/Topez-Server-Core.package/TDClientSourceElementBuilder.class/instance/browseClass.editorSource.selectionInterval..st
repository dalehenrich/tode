as yet unclassified
browseClass: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-b - browse class"

  | classNamePattern parser regex classes defs |
  classNamePattern := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  parser := RxParser safelyParse: classNamePattern.
  parser ifNil: [ ^ false ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  classes := Smalltalk systemNavigation allClasses asArray
    select: [ :cls | regex search: cls name asString ].
  defs := classes collect: [ :cl | TDClassDefinition className: cl name ].
  defs
    editUsing:
      (TDEditorSpec topez: clientSourceElement topez editorAspect: #'definitionList').
  ^ true