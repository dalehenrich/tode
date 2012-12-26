as yet unclassified
diff
  "mc diff <pkg-spec> [<pkg-spec>|<repositoryGroup-index>]"

  | pattern stream diffy wcNode workingCopy package snapshot info ancestorSnapshot |
  pattern := tokens at: 2.
  wcNode := self topez lookup: self pkgsPath.
  workingCopy := wcNode basicContents value detect: [ :pkg | pkg name = pattern ].
  stream := WriteStream on: String new.
  diffy := MCDiffyTextWriter on: stream.
  stream
    nextPutAll: '==================== ' , workingCopy name , ' ====================';
    cr.
  package := workingCopy workingCopy package.
  snapshot := package snapshot.
  info := workingCopy workingCopy ancestors first.
  ancestorSnapshot := workingCopy workingCopy findSnapshotWithVersionInfo: info.
  diffy writePatch: (snapshot patchRelativeToBase: ancestorSnapshot).
  ^ stream contents