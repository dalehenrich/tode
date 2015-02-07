as yet unclassified
gsSessionReportOn: aStream
  System currentSessions
    do: [ :idx | 
      | sessionArray |
      sessionArray := System descriptionOfSession: idx.
      aStream
        nextPutAll: idx asString , ': ';
        nextPutAll: 'User: ' , (sessionArray at: 1) userId;
        nextPutAll: ' | SerialNumber: ' , (sessionArray at: 9) asString;
        nextPutAll: ' | PID: ' , (sessionArray at: 2) asString;
        nextPutAll: ' | IP-Adr.: ' , (sessionArray at: 11) asString;
        nextPutAll: ' | RefOldestCR: ' , (sessionArray at: 8) asString;
        cr ]