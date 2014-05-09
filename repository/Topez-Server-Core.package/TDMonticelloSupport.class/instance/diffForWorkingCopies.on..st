diff
diffForWorkingCopies: workingCopies on: stream
  | patches |
  patches := OrderedCollection new.
  workingCopies
    do: [ :wc | 
      | patch |
      patch := self diffForWorkingCopy: wc on: stream.
      patch isEmpty
        ifTrue: [ wc modified: false ]
        ifFalse: [ 
          patches
            add:
              {wc.
              patch}.
          stream cr ] ].
  ^ patches