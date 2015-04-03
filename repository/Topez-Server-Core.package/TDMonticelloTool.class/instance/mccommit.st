as yet unclassified
mccommit
  "mc commit <pkg-name>
      commit @<workingCopy-path>
  "

  | workingCopy packageName |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  topez
    accumulateTextAndDo: [ :commitMessage :accumulateObjIn | self mccommit: {workingCopy} commitMessage: commitMessage ].
  ^ TDCommandResult new
    displayText: 'Please enter commit comment' asText allBold;
    resultObject: 'Please enter commit comment';
    yourself