as yet unclassified
mmdirty
  "mm dirty"

  | versions dirty |
  versions := self mmlist
    collect: [ :registration | registration lookupBaselineSpec version ].
  dirty := versions
    select: [ :version | 
      | wcs |
      wcs := version packages collect: [ :pkg | pkg workingCopy ].
      (wcs
        detect: [ :wc | 
          wc == nil
            ifTrue: [ false ]
            ifFalse: [ wc modified ] ]
        ifNone: [  ]) notNil ].
  ^ dirty editUsing: (TDEditorSpec topez: topez)