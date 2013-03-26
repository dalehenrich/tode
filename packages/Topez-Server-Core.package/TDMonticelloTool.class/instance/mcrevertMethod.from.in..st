as yet unclassified
mcrevertMethod: methodTokens from: versionName in: targetRepos
  "mc revert <pkg-name> <method-spec>"

  | gofer method snapshot methodDefinition methodSpec |
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