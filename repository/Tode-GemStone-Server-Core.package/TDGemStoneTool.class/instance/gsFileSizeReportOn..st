as yet unclassified
gsFileSizeReportOn: aStream
  "
  gs fileSizeReport
"

  | repositoryFiles stats |
  repositoryFiles := SystemRepository fileNames.
  stats := SystemRepository _extentStatistics: -1.
  1 to: SystemRepository numberOfExtents do: [ :i | 
    | extentFile |
    extentFile := repositoryFiles at: i.
    aStream
      nextPutAll: 'Extent #' , i asString;
      cr;
      nextPutAll: '   Filename = ' , extentFile;
      cr;
      nextPutAll:
          '   File size =       '
              , (SystemRepository numToMByteString: ((stats at: i) at: 1));
      cr;
      nextPutAll:
          '   Space available = '
              , (SystemRepository numToMByteString: ((stats at: i) at: 2));
      cr;
      yourself ].
  aStream
    nextPutAll: 'Totals';
    cr;
    nextPutAll:
        '   Repository size = '
            , (SystemRepository numToMByteString: SystemRepository fileSize);
    cr;
    nextPutAll:
        '   Free Space =      '
            , (SystemRepository numToMByteString: SystemRepository freeSpace);
    cr;
    yourself