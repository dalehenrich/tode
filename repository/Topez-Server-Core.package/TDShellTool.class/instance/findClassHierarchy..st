find
findClassHierarchy: classNameList
  "find hierarchy <class-name>"

  | classes defs appEnv classOrganizer |
  classes := Set new.
  appEnv := self applicationEnvironment.
  classOrganizer := appEnv classOrganizer.
  classNameList
    do: [ :className | 
      | cls |
      cls := appEnv globalNamed: className.
      classes
        addAll:
          (TDClassDefinition fullHierarchyOf: cls classOrganizer: classOrganizer) ].
  defs := classes
    collect: [ :each | 
      each asTDClassDefinition
        appEnv: appEnv;
        yourself ].
  ^ TDClassDefinition classHierarchyOrder: defs