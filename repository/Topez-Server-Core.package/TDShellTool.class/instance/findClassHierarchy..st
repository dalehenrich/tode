as yet unclassified
findClassHierarchy: findTokens
  "find hierarchy <class-name>"

  | className cls classes defs |
  className := findTokens at: 2.
  classes := Set new.
  cls := Smalltalk at: className.
  classes addAll: (TDClassDefinition fullHierarchyOf: cls).
  defs := classes collect: [ :each | TDClassDefinition className: each name ].
  ^ TDClassDefinition classHierarchyOrder: defs