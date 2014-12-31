as yet unclassified
gsfileSizeReport
  "
  gs fileSizeReport
"

  | report repositoryFiles stats |
  report := {}.
  repositoryFiles := SystemRepository fileNames.
  stats := SystemRepository _extentStatistics: -1.
  1 to: SystemRepository numberOfExtents do: [ :i | 
    | extentFile |
    extentFile := repositoryFiles at: i.
    report
      add: 'Extent #' , i asString;
      add: '   Filename = ' , extentFile;
      add:
          '   File size =       '
              , (SystemRepository numToMByteString: ((stats at: i) at: 1));
      add:
          '   Space available = '
              , (SystemRepository numToMByteString: ((stats at: i) at: 2));
      yourself ].	"Add totals"
  report
    add: 'Totals';
    add:
        '   Repository size = '
            , (SystemRepository numToMByteString: SystemRepository fileSize);
    add:
        '   Free Space =      '
            , (SystemRepository numToMByteString: SystemRepository freeSpace);
    yourself.
  ^ report