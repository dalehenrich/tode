as yet unclassified
mmdiff
  "mm diff <config>"

  | registration projectSpec dirty stream empty |
  registration := self getRegistrationFor: (tokens at: 2).
  projectSpec := registration lookupBaselineSpec.
  dirty := self modifiedPackagesForProjectSpec: projectSpec.
  stream := TextStream on: Text new.
  empty := true.
  dirty
    do: [ :packageSpec | 
      empty := false.
      stream
        nextPutAll:
            ('==================== ' , packageSpec name , ' ====================') asText
                allBold;
        cr.
      self compareChangesFor: packageSpec workingCopy on: stream.
      stream cr ].
  empty
    ifTrue: [ ^ 'No dirty packages' asText allBold ].
  ^ stream contents