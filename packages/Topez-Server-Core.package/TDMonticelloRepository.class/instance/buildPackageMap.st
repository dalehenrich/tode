accessing
buildPackageMap
  | map |
  map := Dictionary new.
  self repository readableFileNames
    do: [ :name | 
      | versionReference package packageName |
      versionReference := GoferResolvedReference name: name repository: self repository.
      packageName := versionReference packageName.
      package := map
        at: packageName
        ifAbsent: [ 
          map
            at: packageName
            put:
              (TDMonticelloPackage new
                packageName: packageName;
                yourself) ].
      package addVersionReference: versionReference ].
  ^ self collapsePackageMap: map