as yet unclassified
mrversions
  "mr versions <repository-spec> <package-name>
      versions @<repository-path> <package-name>
  "

  | repo packageName versions loadedVersions wc |
  packageName := tokens at: 3.
  repo := self resolveRepositoryReference: (tokens at: 2).
  versions := self
    mrVersionsFor: packageName
    in: repo
    ifAbsent: [ ^ 'No package named: ' , packageName printString , ' found.' ].
  loadedVersions := self loadedVersions: true.
  loadedVersions
    at: packageName
    ifPresent: [ :loadedVersion | wc := loadedVersion workingCopy ].
  ^ self
    mrBrowseRepositoryVersions: versions
    in: repo
    workingCopy: wc
    parentBuilder: nil
    windowId: nil
    label: 'Versions for ' , packageName , ' in ' , repo description