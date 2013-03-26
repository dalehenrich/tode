as yet unclassified
mmdiff
  "mm diff [<config>]"

  | registrations projectSpec dirty stream empty patch |
  registrations := tokens size = 1
    ifTrue: [ 
      self mmlist
        select: [ :registration | 
          | version |
          version := registration lookupBaselineSpec version.
          (version packages
            detect: [ :pkg | 
              | wc |
              wc := pkg workingCopy.
              wc == nil
                ifTrue: [ false ]
                ifFalse: [ wc modified ] ]
            ifNone: [  ]) notNil ] ]
    ifFalse: [ {(self getRegistrationFor: (tokens at: 2))} ].
  stream := TextStream on: Text new.
  empty := true.
  registrations
    do: [ :registration | 
      projectSpec := registration lookupBaselineSpec.
      stream
        nextPutAll:
            ('____________________ ' , projectSpec name , ' ____________________') asText
                allBold;
        cr.
      dirty := self modifiedPackagesForProjectSpec: projectSpec.
      dirty
        do: [ :packageSpec | 
          empty := false.
          stream
            nextPutAll:
                ('==================== ' , packageSpec name , ' ====================') asText
                    allBold;
            cr.
          patch := self compareChangesFor: packageSpec workingCopy on: stream.
          stream cr ] ].
  empty
    ifTrue: [ ^ 'No dirty packages' asText allBold ].
  stream contents edit: topez aspect: #'browse' windowId: nil.
  ^ patch