as yet unclassified
mcunloadWorkingCopy: workingCopy
  Transcript
    cr;
    show:
        'Unload: ' , workingCopy packageName printString , ' @ '
            , DateAndTime now printString.
  ^ Gofer new
    package: workingCopy packageName;
    unload