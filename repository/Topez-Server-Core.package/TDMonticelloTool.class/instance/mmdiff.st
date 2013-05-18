as yet unclassified
mmdiff
  "mm diff [<config-list>]"

  | registrations stream patches projectSpecs |
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
  projectSpecs := registrations
    collect: [ :registration | registration lookupBaselineSpec ].
  stream := TextStream on: Text new.
  patches := self mmDiffForProjects: projectSpecs on: stream.
  patches isEmpty
    ifTrue: [ ^ 'No dirty packages' asText allBold ].
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patches