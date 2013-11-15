as yet unclassified
gssessionDescription
  "
  gs sessionDescription
"

  | description ar x |
  ar := System descriptionOfSession: System session.
  description := Dictionary new
    at: #'userProfile' put: (ar at: 1);
    at: #'gemPid' put: (ar at: 2);
    at: #'gemHost' put: (ar at: 3);
    at: #'gemPrimitiveNumber' put: (ar at: 4);
    at: #'mostRecentTransactionTime' put: (ar at: 5);
    at: #'sessionState' put: (ar at: 6);
    at: #'transactionMode' put: (ar at: 7);
    at: #'onOldestCommitRecord' put: (ar at: 8);
    at: #'sessionSerialNumber' put: (ar at: 9);
    at: #'sessionId' put: (ar at: 10);
    at: #'gciHostIP' put: (ar at: 11);
    at: #'sessionPriority' put: (ar at: 12);
    at: #'gciUniqueHostId' put: (ar at: 13);
    at: #'mostRecetStoneRequest' put: (ar at: 14);
    at: #'sessionLoginTime' put: (ar at: 15);
    at: #'systemCommitsSinceSessionView' put: (ar at: 16);
    at: #'systemDescription' put: (ar at: 17);
    at: #'numTempObjIds' put: (ar at: 18);
    at: #'numTempPageIds' put: (ar at: 19);
    at: #'sessionVoteState' put: (ar at: 20);
    yourself.
  ^ description