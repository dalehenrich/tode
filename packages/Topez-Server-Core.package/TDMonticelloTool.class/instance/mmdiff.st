as yet unclassified
mmdiff
  "mm diff <config>"

  | registration projectSpec dirty stream |
  registration := self getRegistrationFor: (tokens at: 2).
  projectSpec := registration lookupBaselineSpec.
  dirty := self modifiedPackagesForProjectSpec: projectSpec.
  stream := TextStream on: Text new.
  dirty
    do: [ :packageSpec | 
      stream
        nextPutAll:
            ('==================== ' , packageSpec name , ' ====================') asText
                allBold;
        cr.
      self compareChangesFor: packageSpec workingCopy on: stream.
      stream cr ].
  ^ stream contents