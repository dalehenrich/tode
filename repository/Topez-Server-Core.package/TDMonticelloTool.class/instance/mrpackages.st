as yet unclassified
mrpackages
  "mr packages <repository-spec>
      packages @<repository-path>
  "

  "underlined if package is loaded in image, bold if there is a newer version of package in repository"

  | repo packageNames displayPolicy stream loadedVersions resolvedReferences |
  repo := self resolveRepositoryReference: (tokens at: 2).
  loadedVersions := self loadedVersions.
  resolvedReferences := self resolvedReferencesForRepository: repo.
  packageNames := resolvedReferences keys asArray
    sorted: [ :a :b | 
      | aLoaded bLoaded |
      aLoaded := bLoaded := true.
      loadedVersions at: a ifAbsent: [ aLoaded := false ].
      loadedVersions at: b ifAbsent: [ bLoaded := false ].
      aLoaded & bLoaded
        ifTrue: [ a < b ]
        ifFalse: [ 
          aLoaded
            ifTrue: [ true ]
            ifFalse: [ 
              bLoaded
                ifTrue: [ false ]
                ifFalse: [ a < b ] ] ] ].
  displayPolicy := topez displayPolicy.
  stream := displayPolicy stream.
  packageNames
    do: [ :packageName | 
      | packageText attributes loadedVersionName |
      attributes := {(TextEmphasis normal)}.
      loadedVersionName := ''.
      loadedVersions
        at: packageName
        ifPresent: [ :versionReference | 
          attributes add: TextEmphasis underlined.
          loadedVersionName := ' (' , versionReference author , '.'
            , versionReference versionNumber asString , ')'.
          resolvedReferences
            at: versionReference packageName
            ifPresent: [ :sortedVersions | 
              | newest sameBranch |
              sameBranch := sortedVersions
                select: [ :version | version branch = versionReference branch ].
              sameBranch isEmpty
                ifFalse: [ 
                  newest := sameBranch first.
                  newest versionNumber > versionReference versionNumber
                    ifTrue: [ attributes add: TextEmphasis bold ] ] ] ].
      packageText := Text
        string: packageName , loadedVersionName
        attributes: attributes.
      stream nextPutAll: packageText.
      stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: packageNames;
    yourself