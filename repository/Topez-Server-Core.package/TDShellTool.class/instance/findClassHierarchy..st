as yet unclassified
findClassHierarchy: className
  "find hierarchy <class-name>"

  | cls classes defs |
  classes := Set new.
  cls := Smalltalk at: className.
  classes addAll: (TDClassDefinition fullHierarchyOf: cls).
  defs := classes collect: [ :each | TDClassDefinition className: each name ].
  ^ TDClassDefinition classHierarchyOrder: defs