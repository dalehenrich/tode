bu
shapshotDirectoryName
  SnapshotDirectoryName
    ifNil: [ self snapshotDirectoryName: self defaultSnapshotDirectoryName ].
  ^ SnapshotDirectoryName