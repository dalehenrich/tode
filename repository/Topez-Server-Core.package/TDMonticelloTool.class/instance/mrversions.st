as yet unclassified
mrversions
  "mr versions <repository-spec> <package-name>
      versions @<repository-path> <package-name>
  "

  "underlined if version is loaded in image, bold if version is not in the version history of the loaded package"

  | repo packageName versions displayPolicy stream loadedVersions loadedVersion ancestorNames wc limit |
  packageName := tokens at: 3.
  repo := self resolveRepositoryReference: (tokens at: 2).
  tokens size > 3
    ifTrue: [ limit := (tokens at: 4) asNumber ].
  versions := self
    mrVersionsFor: packageName
    in: repo
    ifAbsent: [ ^ 'No package named: ' , packageName printString , ' found.' ].
  displayPolicy := topez displayPolicy.
  stream := displayPolicy stream.
  loadedVersions := self loadedVersions: true.
  loadedVersion := loadedVersions at: packageName ifAbsent: [  ].
  ancestorNames := #().
  loadedVersion notNil
    ifTrue: [ 
      wc := loadedVersion workingCopy.
      ancestorNames := wc ancestry allAncestors
        collect: [ :ancestor | ancestor name ].
      versions := versions
        select: [ :version | version branch = loadedVersion branch ].
      stream
        nextPutAll: 'LOADED: ' asText allBold;
        nextPutAll:
            (Text string: loadedVersion name attributes: {(TextEmphasis underlined)});
        cr ].
  limit == nil
    ifTrue: [ limit := versions size ]
    ifFalse: [ limit := limit min: versions size ].
  1 to: limit do: [ :index | 
    | version versionText attributes |
    version := versions at: index.
    attributes := {(TextEmphasis normal)}.
    loadedVersions
      at: version packageName
      ifPresent: [ :versionReference | 
        (loadedVersion notNil and: [ loadedVersion name = version name ])
          ifTrue: [ attributes add: TextEmphasis underlined ] ].
    (ancestorNames includes: version name)
      ifFalse: [ attributes add: TextEmphasis bold ].
    versionText := Text string: version name attributes: attributes.
    stream nextPutAll: versionText.
    stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: versions;
    yourself