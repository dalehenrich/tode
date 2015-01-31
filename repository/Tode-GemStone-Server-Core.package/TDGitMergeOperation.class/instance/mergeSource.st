as yet unclassified
mergeSource
  | diff from to |
  view == #'ancestor'
    ifTrue: [ ^ self ancestor ].
  view == #'us'
    ifTrue: [ ^ self us ].
  view == #'them'
    ifTrue: [ ^ self them ].
  view == #'custom'
    ifTrue: [ ^ self editDefinition ].
  view == #'ancestorVsUs'
    ifTrue: [ 
      from := self ancestor.
      to := self us ]
    ifFalse: [ 
      view == #'ancestorVsThem'
        ifTrue: [ 
          from := self ancestor.
          to := self them ]
        ifFalse: [ 
          view == #'ancestorVsCustom'
            ifTrue: [ 
              from := self ancestor.
              to := self editDefinition ]
            ifFalse: [ 
              view == #'usVsThem'
                ifTrue: [ 
                  from := self us.
                  to := self them ]
                ifFalse: [ 
                  view == #'usVsCustom'
                    ifTrue: [ 
                      from := self us.
                      to := self editDefinition ]
                    ifFalse: [ 
                      view == #'themVsUs'
                        ifTrue: [ 
                          from := self them.
                          to := self us ]
                        ifFalse: [ 
                          view == #'themVsCustom'
                            ifTrue: [ 
                              from := self them.
                              to := self editDefinition ]
                            ifFalse: [ 
                              view == #'imageVsCustom'
                                ifTrue: [ 
                                  from := self imageMethodSource.
                                  to := self editDefinition ]
                                ifFalse: [ 
                                  view == #'imageVsThem'
                                    ifTrue: [ 
                                      from := self imageMethodSource.
                                      to := self them ]
                                    ifFalse: [ 
                                      view == #'imageVsUs'
                                        ifTrue: [ 
                                          from := self imageMethodSource.
                                          to := self us ]
                                        ifFalse: [ self error: 'Unknown view: ' , view printString ] ] ] ] ] ] ] ] ] ].
  diff := TextDiffBuilder
    from: (self formatSource: from) withSqueakLineEndings
    to: (self formatSource: to) withSqueakLineEndings.
  ^ diff buildTextPatch