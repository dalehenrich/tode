as yet unclassified
mcunload
  "mc unload <packageName>"

  | packageName |
  packageName := tokens at: 2.
  Transcript
    cr;
    show:
        'Unload: ' , packageName printString , ' @ ' , DateAndTime now printString.
  ^ Gofer new
    package: packageName;
    unload