api
classNamesInMetacelloProject: aProjectName
    | classes extensionClasses ar project |
    project := Metacello image
        project: aProjectName;
        list.
    ar := self rawClassesInMetacelloProject: project.
    classes := (ar at: 1) , (ar at: 2) keys.
    classes := (classes collect: [ :cl | cl theNonMetaClass ]) asSet asArray.
    ^ (classes collect: [ :cl | cl name asString ]) sorted