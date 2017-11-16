commands
gsFileSizeReportOn: aStream
  "
  gs fileSizeReport
"

  | repositoryFiles stats totalSize availableSize |
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
              ,
                (SystemRepository numToMByteString: (totalSize := (stats at: i) at: 1));
      cr;
      nextPutAll:
          '   Space available = '
              ,
                (SystemRepository numToMByteString: (availableSize := (stats at: i) at: 2));
      cr;
      nextPutAll:
          '   Space Used =      '
              , (SystemRepository numToMByteString: totalSize - availableSize);
      cr;
      yourself ].
  aStream
    nextPutAll: 'Totals';
    cr;
    nextPutAll:
        '   Repository size = '
            ,
              (SystemRepository numToMByteString: (totalSize := SystemRepository fileSize));
    cr;
    nextPutAll:
        '   Free Space =      '
            ,
              (SystemRepository
                numToMByteString: (availableSize := SystemRepository freeSpace));
    cr;
    nextPutAll:
        '   Used Space =      '
            , (SystemRepository numToMByteString: totalSize - availableSize);
    cr;
    yourself