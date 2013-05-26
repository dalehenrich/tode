as yet unclassified
mmcommit
  "mm commit <config> [@<commit-message-path>]"

  | registration projectSpec workingCopies |
  registration := self getRegistrationFor: (tokens at: 2).
  projectSpec := registration lookupBaselineSpec.
  workingCopies := (self modifiedPackagesForProjectSpec: projectSpec)
    collect: [ :packageSpec | packageSpec workingCopy ].
  workingCopies isEmpty
    ifTrue: [ ^ 'No modified packages to commit' ].
  tokens size > 2
    ifTrue: [ 
      | commitMessage |
      commitMessage := tokens at: 3.
      (commitMessage beginsWith: '@')
        ifTrue: [ 
          commitMessage := self resolveAtPathReference: commitMessage.
          ^ self commitWorkingCopies: workingCopies commitMessage: commitMessage ] ].
  topez
    accumulateTextAndDo: [ :commitMessage :accumulateObjIn | self commitWorkingCopies: workingCopies commitMessage: commitMessage ].
  ^ TDCommandResult new
    displayText: 'Please enter commit comment' asText allBold;
    resultObject: 'Please enter commit comment';
    yourself