accessing
commitTransaction
  self serverStatus autoCommit
    ifFalse: [ ^ self ].
  [ System commit ]
    on: Error
    do: [ :ex | 
      "if an error occurs during commit, disable autoCommit and pass"
      Transcript
        cr;
        show: 'AUTOCOMMIT DISABLED'.
      self serverStatus autoCommit: false.
      ex pass ]