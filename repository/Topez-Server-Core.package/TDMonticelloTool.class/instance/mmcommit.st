as yet unclassified
mmcommit
  "mm commit <config> [@<commit-message-path>]"

  | registration projectSpec dirty |
  registration := self getRegistrationFor: (tokens at: 2).
  projectSpec := registration lookupBaselineSpec.
  dirty := self modifiedPackagesForProjectSpec: projectSpec.
  dirty isEmpty
    ifTrue: [ ^ 'No modified packages to commit' ].
  tokens size > 2
    ifTrue: [ 
      | commitMessage |
      commitMessage := tokens at: 3.
      (commitMessage beginsWith: '@')
        ifTrue: [ 
          commitMessage := self resolveAtPathReference: commitMessage.
          ^ self commitPackages: dirty commitMessage: commitMessage ] ].
  topez
    accumulateTextAndDo: [ :commitMessage :accumulateObjIn | self commitPackages: dirty commitMessage: commitMessage ].
  ^ TDCommandResult new
    displayText: 'Please enter commit comment' asText allBold;
    resultObject: 'Please enter commit comment';
    yourself