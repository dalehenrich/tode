as yet unclassified
mcrevertMethod: methodTokens workingCopy: workingCopy
  | gofer method snapshot methodDefinition methodSpec info versionName repositories targetRepos version |
  info := workingCopy ancestry ancestors first.
  versionName := info name.
  repositories := workingCopy repositoryGroup repositories
    reject: [ :repo | repo = MCCacheRepository default ].
  targetRepos := repositories
    select: [ :repo | (version := repo versionWithInfo: info) notNil ].
  method := self lookupMethodIn: methodTokens.
  methodSpec := method inClass name asString , '>>' , method selector asString.
  snapshot := self
    snapshotFor: versionName
    in:
      (targetRepos first asRepositorySpecFor: MetacelloMCProject new) description.
  methodDefinition := snapshot definitions
    detect: [ :def | 
      def isMethodDefinition
        and: [ method inClass == def actualClass and: [ method selector == def selector ] ] ]
    ifNone: [ 
      ^ 'No definition found for ' , methodSpec printString
        , ' in ' versionName printString ].
  Transcript
    cr;
    show:
        'Revert: ' , methodSpec printString , ' from ' , versionName printString , ' @ '
            , DateAndTime now printString.
  ^ methodDefinition load