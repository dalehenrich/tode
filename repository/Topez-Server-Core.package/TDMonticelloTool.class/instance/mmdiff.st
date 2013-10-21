as yet unclassified
mmdiff
  "mm diff [ <config-name> [all|dirty] ]"

  | registrations stream patches projectSpecs diffDirty |
  diffDirty := true.
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
      tokens size >= 3
        ifTrue: [ diffDirty := (tokens at: 3) = 'dirty' ].
      {(self getRegistrationFor: (tokens at: 2))} ].
  projectSpecs := registrations
    collect: [ :registration | registration lookupBaselineSpec ].
  stream := TextStream on: Text new.
  patches := self
    mmDiffForProjects: projectSpecs
    on: stream
    diffDirty: diffDirty.
  patches isEmpty
    ifTrue: [ ^ 'No dirty packages' asText allBold ].
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself).
  ^ patches