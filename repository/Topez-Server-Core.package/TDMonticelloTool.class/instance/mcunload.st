as yet unclassified
mcunload
  "mc unload <packageName>
      unload @<workingCopy-path>
  "

  | packageName workingCopy |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  Transcript
    cr;
    show:
        'Unload: ' , workingCopy packageName printString , ' @ '
            , DateAndTime now printString.
  ^ Gofer new
    package: workingCopy packageName;
    unload