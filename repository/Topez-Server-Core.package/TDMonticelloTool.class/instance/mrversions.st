as yet unclassified
mrversions
  "
  mr versions [-g|--git][-m|--monticello] <repository-spec> <package-name>
     versions [-g|--git][-m|--monticello] @<repository-path> <package-name>
  "

  | repo packageName versions loadedVersions wc |
  self
    getOptsMixedLongShort:
      {#('help' $h #'none').
      #('git' $g #'none').
      #('monticello' $m #'none')}.
  self options
    at: 'help'
    ifPresent: [ :ignored | ^ self man: self todeCommand command ].
  packageName := self arguments at: 2.
  repo := self resolveRepositoryReference: (self arguments at: 1).
  self options
    at: 'git'
    ifPresent: [ :ignored | 
      ^ self
        mrBrowseGitVersionsFor: packageName
        in: repo
        ifAbsent: [ ^ 'No package named: ' , packageName printString , ' found.' ] ].
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