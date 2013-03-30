accessing
commitTransaction
  self serverStatus autoCommit
    ifFalse: [ ^ self ].
  [( System respondsTo: #commit) 
	ifTrue: [ System commit] 
	ifFalse: [
		System commitTransaction 
			ifFalse: [ self error: 'Attempt to commit transaction failed' ].] ]
    on: Error
    do: [ :ex | 
      "if an error occurs during commit, disable autoCommit and pass"
      Transcript
        cr;
        show: 'AUTOCOMMIT DISABLED'.
      self serverStatus autoCommit: false.
      self topezClientForwarder autoCommitDisabled.
      ex pass ]