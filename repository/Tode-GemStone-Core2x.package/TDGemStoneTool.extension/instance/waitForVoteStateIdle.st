*tode-gemstone-core2x
waitForVoteStateIdle
  "Assumes the caller has voted by executing a commit or abort.
 returns when the vote state is idle."

  [ System voteState > 0 ]
    whileTrue: [ 
      System sleep: 1.
      System abortTransaction ].
  ^ self