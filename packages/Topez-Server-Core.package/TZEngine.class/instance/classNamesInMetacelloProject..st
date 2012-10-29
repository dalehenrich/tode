as yet unclassified
classNamesInMetacelloProject: aProjectName
    | classes extensionClasses ar project |
    project := self metacelloProjectNamed: aProjectName.
    ar := self rawClassesInMetacelloProject: project.
    classes := (ar at: 1) , (ar at: 2) keys.
    classes := (classes collect: [ :cl | cl theNonMetaClass ]) asSet asArray.
    ^ (classes collect: [ :cl | cl name asString ]) sorted