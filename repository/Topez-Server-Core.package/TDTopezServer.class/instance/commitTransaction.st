accessing
commitTransaction
  self serverStatus autoCommit
    ifFalse: [ ^ self ].
  [ 
  System commitTransaction
    ifFalse: [ 
      | conflicts |
      conflicts := System transactionConflicts.
      System abortTransaction.
      self
        notify:
          'Attempt to commit transaction failed. debug to see transaction conflicts. NOTE: results of last operation have been aborted!' ] ]
    on: Error
    do: [ :ex | 
      "if an error occurs during commit, disable autoCommit and pass"
      Transcript
        cr;
        show: 'AUTOCOMMIT DISABLED'.
      self serverStatus autoCommit: false.
      self topezClientForwarder autoCommitDisabled.
      ex pass ]