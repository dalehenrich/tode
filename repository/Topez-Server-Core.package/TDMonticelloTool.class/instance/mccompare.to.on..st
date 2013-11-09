as yet unclassified
mccompare: snapshot1 to: snapshot2 on: stream
  | patch diffy |
  patch := snapshot1 patchRelativeToBase: snapshot2.
  patch isEmpty
    ifTrue: [ 
      stream
        nextPutAll: '... no changes';
        cr.
      ^ stream contents ].
  diffy := MCDiffyTextWriter on: stream.
  diffy writePatch: patch.
  stream cr.
  ^ patch