as yet unclassified
classesInMetacelloProject: aMetacelloProjectSpec level: level
    | classes extensionClasses ar hierarchyOrder |
    ar := self rawClassesInMetacelloProject: aMetacelloProjectSpec.
    classes := ar at: 1.
    extensionClasses := ar at: 2.
    hierarchyOrder := TZClassElement
        hierarchyForClasses: classes
        extensionClasses: extensionClasses
        classElementFactory: self.
    ^ self toString: hierarchyOrder level: level