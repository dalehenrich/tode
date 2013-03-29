instance creation
subclassesOf: classList classElementFactory: classElementFactory
    ^ self
        processClassesBlock: [ 
            | classes |
            classes := Set new.
            classList do: [ :cl | classes addAll: cl allSubclasses ].
            classes ]
        classElementFactory: classElementFactory