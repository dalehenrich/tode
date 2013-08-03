as yet unclassified
mmcommit
  "mm commit <config> [@<commit-message-path>]"

  | projectName |
  projectName := tokens at: 2.
  tokens size > 2
    ifTrue: [ 
      | commitMessage |
      commitMessage := tokens at: 3.
      (commitMessage beginsWith: '@')
        ifTrue: [ 
          commitMessage := self resolveAtPathReference: commitMessage.
          ^ self mmCommit: projectName commitMessage: commitMessage ] ].
  topez
    accumulateTextAndDo: [ :commitMessage :accumulateObjIn | self mmCommit: projectName commitMessage: commitMessage ].
  ^ TDCommandResult new
    displayText: 'Please enter commit comment' asText allBold;
    resultObject: 'Please enter commit comment';
    yourself