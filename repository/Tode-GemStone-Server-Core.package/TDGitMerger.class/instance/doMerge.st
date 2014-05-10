as yet unclassified
doMerge
  | unresolved |
  self merged
    ifTrue: [ 
      Transcript
        cr;
        show: 'Merger already performed'.
      ^ false ].
  unresolved := self operations select: [ :each | each resolved not ].
  unresolved isEmpty
    ifFalse: [ 
      self
        inform:
          'Cannot perform merger: unresolved conflicts: ' , unresolved asArray printString.
      ^ false ].
  self operations do: [ :ea | ea applyTo: self ].
  self mergerCompletionBlock value.
  self merged: true.
  Transcript
    cr;
    show: 'Merger complete'.
  ^ true