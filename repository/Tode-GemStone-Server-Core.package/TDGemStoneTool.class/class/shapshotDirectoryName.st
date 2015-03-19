as yet unclassified
shapshotDirectoryName
  SnapshotDirectoryName
    ifNil: [ self snapshotDirectoryName: self defaultSnapshotDirectoryName ].
  ^ SnapshotDirectoryName