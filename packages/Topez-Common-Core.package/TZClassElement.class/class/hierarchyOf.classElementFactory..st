instance creation
hierarchyOf: classList classElementFactory: classElementFactory
    ^ self
        processClassesBlock: [ 
            | classes |
            classes := Set new.
            classList
                do: [ :cl | 
                    classes addAll: cl allSuperclasses.
                    classes add: cl.
                    classes addAll: cl allSubclasses ].
            classes ]
        classElementFactory: classElementFactory