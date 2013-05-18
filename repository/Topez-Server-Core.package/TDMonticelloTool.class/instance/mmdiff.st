as yet unclassified
mmdiff
  "mm diff [<config-list>]"

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
    ifFalse: [ 
      (tokens copyFrom: 2 to: tokens size)
        collect: [ :config | self getRegistrationFor: config ] ].
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
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patch