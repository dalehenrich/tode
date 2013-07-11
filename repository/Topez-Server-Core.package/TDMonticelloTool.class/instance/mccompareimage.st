as yet unclassified
mccompareimage
  "mc compare image <package-name> <version-name> <repository-spec>
  "

  | packageName wc package stream version2 snapshot1 snapshot2 patch diffy resolutionAr |
  packageName := tokens at: 3.
  wc := self resolveWorkingCopyReference: packageName.
  package := wc package.
  snapshot1 := package snapshot.
  resolutionAr := self resolveVersionReferenceStartingAt: 4 inTokens: tokens.
  version2 := resolutionAr at: 1.
  snapshot2 := version2 snapshot.
  patch := snapshot1 patchRelativeToBase: snapshot2.
  stream := TextStream on: Text new.
  stream
    nextPutAll:
        ('==================== ' , packageName , ' vs' , version2 info name
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
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patch