monticello
validateConsistencyOfMonticelloVersion: newVersion
  "Make sure that the name of the newVersion when parsed is consistent with the name of package"

  | packageNameFromFileName actualPackageName packageFileName |
  packageFileName := newVersion info name.
  packageNameFromFileName := (GoferVersionReference name: packageFileName)
    packageName.
  actualPackageName := newVersion package name.
  packageNameFromFileName = actualPackageName
    ifFalse: [ 
      self
        error:
          'Package name mismatch - the filename of the package: '
            , packageFileName printString
            ,
              ' is not following the package naming convention: ''packageName.branch-initials.count'' (where `.branch` is optional). The package name derived from the filename: '
            , packageNameFromFileName printString
            , 'does not match the actual name of the package: '
            , actualPackageName printString
            , 'and could cause trouble, especially in FileTree repositories.' ]