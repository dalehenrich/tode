find
findClassHierarchy: classNameList
  "find hierarchy <class-name>"

  | classes defs appEnv classOrganizer |
  classes := Set new.
  appEnv := self applicationEnvironment.
  classOrganizer := appEnv classOrganizer.
  classNameList
    do: [ :className | 
      (appEnv globalNamed: className)
        ifNil: [ self notify: 'No class found for ' , className printString ]
        ifNotNil: [ :cls | 
          classes
            addAll:
              (TDClassDefinition fullHierarchyOf: cls classOrganizer: classOrganizer) ] ].
  defs := classes
    collect: [ :each | 
      each asTDClassDefinition
        appEnv: appEnv;
        yourself ].
  ^ TDClassDefinition classHierarchyOrder: defs