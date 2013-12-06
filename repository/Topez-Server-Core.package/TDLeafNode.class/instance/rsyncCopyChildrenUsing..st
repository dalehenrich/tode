rsync
rsyncCopyChildrenUsing: aSTONRsync
  "receiver is an rsync source directory node ... sent directly from
   TDSTONRsync>>rsync:to:"

  self
    error:
      'trailing slash on path to leaf node indicates directory, not leaf node'