accessing
abortTransaction
  self serverStatus autoCommit
    ifFalse: [ ^ self ].
  System abortTransaction