instance creation
hierarchyForClasses: classList extensionClasses: extensionClassList classElementFactory: classElementFactory
    ^ self
        processClassesBlock: [ 
            classList do: [ :cl | extensionClassList removeKey: cl ifAbsent: [  ] ].
            classList , extensionClassList keys asArray ]
        elementBlock: [ :cl :indents | 
            classElementFactory newClassElement
                elementClass: cl;
                elementClassName: cl name;
                elementSuperClassName: cl superclass name;
                indent: (indents at: cl);
                inExtensionClassList: (extensionClassList includesKey: cl);
                yourself ]