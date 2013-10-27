as yet unclassified
mccompareimage: reversed
  | packageName wc package stream version2 snapshot1 snapshot2 patch resolutionAr |
  packageName := tokens at: 3.
  wc := self resolveWorkingCopyReference: packageName.
  package := wc package.
  snapshot1 := package snapshot.
  resolutionAr := self resolveVersionReferenceStartingAt: 4 inTokens: tokens.
  version2 := resolutionAr at: 1.
  snapshot2 := version2 snapshot.
  stream := TextStream on: Text new.
  reversed
    ifTrue: [ 
      stream
        nextPutAll:
            ('==================== ' , version2 info name , ' vs' , packageName
                , ' ====================') asText allBold;
        cr.
      patch := self mccompare: snapshot2 to: snapshot1 on: stream ]
    ifFalse: [ 
      stream
        nextPutAll:
            ('==================== ' , packageName , ' vs' , version2 info name
                , ' ====================') asText allBold;
        cr.
      patch := self mccompare: snapshot1 to: snapshot2 on: stream ].
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patch