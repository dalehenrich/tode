bu
buBackup: backupPath waitForVotingToComplete: waitForVotingToComplete safely: safely uncompressed: uncompressed validate: validate
  | theBackupPath |
  waitForVotingToComplete
    ifTrue: [ Transcript
        cr;
        show: 'Waiting for vote to complete...'.
      System waitForVoteStateIdle.
      self checkGcLock: [ :sessionHoldingGcLock | self
            error:
              'System has completed voting, but the gc lock is still being held by session with id '
                , sessionHoldingGcLock printString , '.' ].
      Transcript show: 'Vote complete.' ]
    ifFalse: [ self
        checkSystemIsVoting: [ :sessionHoldingGcLock :voteState | ^ 'Please wait until system is no longer voting and try again (voteState: '
            , voteState printString , ' gc session id: '
            , sessionHoldingGcLock printString
            , '). Use --wait option to delay backup until voting is complete.' ] ].
  theBackupPath := uncompressed
    ifTrue: [ backupPath ]
    ifFalse: [ | postFix |
      postFix := '.gz'.
      (backupPath endsWith: postFix)
        ifTrue: [ backupPath ]
        ifFalse: [ ".gz automatically added to filename during compressed backup"
          backupPath , postFix ] ].
  Transcript
    cr;
    show: '---Starting backup to ' , theBackupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  self fullBackupTo: theBackupPath safely: safely uncompressed: uncompressed.
  self class lastBackup: theBackupPath.
  validate
    ifTrue: [ Transcript
        cr;
        show: '---validating backup (';
        show: TimeStamp now asString;
        show: ')'.
      self buValidateReadableBackupFile: theBackupPath ].
  Transcript
    cr;
    show: '---Finished backup to ' , LastBackup.
  ^ theBackupPath