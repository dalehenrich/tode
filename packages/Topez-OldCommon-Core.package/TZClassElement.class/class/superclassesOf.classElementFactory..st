instance creation
superclassesOf: classList classElementFactory: classElementFactory
    ^ self
        processClassesBlock: [ 
            | classes |
            classes := Set new.
            classList do: [ :cl | classes addAll: cl allSuperclasses ].
            classes ]
        classElementFactory: classElementFactory