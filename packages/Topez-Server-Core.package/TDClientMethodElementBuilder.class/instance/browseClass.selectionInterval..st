as yet unclassified
browseClass: clientSourceElement selectionInterval: selectionInterval
  "CMD-b - browse class"

  "find class matching pattern"

  | gsMethod classNamePattern parser regex classes defs |
  gsMethod := self method.
  classNamePattern := gsMethod sourceString copyFrom: selectionInterval _from to: selectionInterval _to.
  parser := RxParser new safelyParse: classNamePattern.
  parser ifNil: [ ^ false ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  classes := SystemNavigation default allClasses asArray select: [ :cls | regex search: cls name asString ].
  defs := classes collect: [ :cl | TDClassDefinition className: cl name ].
  defs edit: clientSourceElement topez aspect: #'definitionList'.
  ^ true