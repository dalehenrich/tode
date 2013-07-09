as yet unclassified
mrpackages
  "mr packages <repository-spec>
      packages @<repository-path>
  "

  "underlined if package is loaded in image, bold if there is a newer version of package in repository"

  | repo ar packageNames displayPolicy stream loadedVersions resolvedReferences dirtyPackageNames |
  repo := self resolveRepositoryReference: (tokens at: 2).
  ar := self mrpackageNamesIn: repo.
  packageNames := ar at: 1.
  loadedVersions := ar at: 2.
  resolvedReferences := ar at: 3.
  dirtyPackageNames := (MCWorkingCopy allManagers select: [ :wc | wc modified ])
    collect: [ :wc | wc packageName ].
  displayPolicy := topez displayPolicy.
  stream := displayPolicy stream.
  packageNames := packageNames
    collect: [ :packageName | 
      | packageText attributes loadedVersionName laterVersionName packageNameString modified |
      attributes := {(TextEmphasis normal)}.
      loadedVersionName := ''.
      laterVersionName := ''.
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
                    ifTrue: [ 
                      laterVersionName := ' << (' , newest author , '.'
                        , newest versionNumber asString , ')'.
                      attributes add: TextEmphasis bold ] ] ] ]
        ifAbsent: [ 
          resolvedReferences
            at: packageName
            ifPresent: [ :sortedVersions | 
              | newest |
              newest := sortedVersions first.
              loadedVersionName := ' (' , newest author , '.'
                , newest versionNumber asString , ')' ] ].
      modified := ''.
      (dirtyPackageNames includes: packageName)
        ifTrue: [ modified := '* ' ].
      packageNameString := modified , packageName , loadedVersionName
        , laterVersionName.
      packageText := Text string: packageNameString attributes: attributes.
      stream nextPutAll: packageText.
      stream cr.
      packageNameString ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: packageNames;
    yourself