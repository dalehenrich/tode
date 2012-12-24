accessing
collapsePackageMap: map
  "if a TDMonticelloPackage>>packageMap has only one entry and the entry is not a branch, then replace the map entry with the TDMonticelloVerion"

  true
    ifTrue: [ 
      "skip for now ... convenient but leads to different pathx"
      ^ map ].
  map keys
    do: [ :packageName | 
      | package |
      package := map at: packageName.
      package versionMap size == 1
        ifTrue: [ package versionMap at: packageName ifPresent: [ :version | map at: packageName put: version ] ] ].
  ^ map