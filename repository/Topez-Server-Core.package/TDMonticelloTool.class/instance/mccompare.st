as yet unclassified
mccompare
  "mc compare <version-name> <repository-spec> <version-name> <repository-spec>
      compare <version-name> @<repository-path> <version-name> @<repository-path>
      compare @<version-path> <version-name> <repository-spec>
      compare <version-name> <repository-spec> @<version-path>
      compare @<version-path> @<version-path>
      compare image <package-name> <version-name> <repository-spec>
  "

  | stream version1 version2 snapshot1 snapshot2 patch diffy resolutionAr |
  (tokens at: 2) = 'image'
    ifTrue: [ ^ self mccompareimage ].
  resolutionAr := self resolveVersionReferenceStartingAt: 2 inTokens: tokens.
  version1 := resolutionAr at: 1.
  snapshot1 := version1 snapshot.
  resolutionAr := self
    resolveVersionReferenceStartingAt: (resolutionAr at: 2)
    inTokens: tokens.
  version2 := resolutionAr at: 1.
  snapshot2 := version2 snapshot.
  patch := snapshot1 patchRelativeToBase: snapshot2.
  stream := TextStream on: Text new.
  stream
    nextPutAll:
        ('==================== ' , version1 info name , ' vs' , version2 info name
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