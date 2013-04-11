as yet unclassified
mccompare
  "mc compare <version-name> <repository-spec> <version-name> <repository-spec>"

  | stream version1Name version2Name repo1Spec repo2Spec snapshot1 snapshot2 patch diffy |
  version1Name := tokens at: 2.
  repo1Spec := tokens at: 3.
  snapshot1 := self snapshotFor: version1Name in: repo1Spec.
  version2Name := tokens at: 4.
  repo2Spec := tokens at: 5.
  snapshot2 := self snapshotFor: version2Name in: repo2Spec.
  patch := snapshot1 patchRelativeToBase: snapshot2.
  stream := TextStream on: Text new.
  stream
    nextPutAll:
        ('==================== ' , version1Name , ' vs' , version2Name
            , ' ====================') asText allBold;
    cr.
  patch isEmpty
    ifTrue: [ 
      stream
        nextPutAll: '... no changes';
        cr.
      ^ stream contents ].
  diffy := MCDiffyTextWriter on: stream.
  diffy writePatch: patch.
  stream cr.
  stream contents edit: topez aspect: #'edit' windowId: nil.
  ^ patch