accessing
doMerge
  | unresolved loader |
  self merged
    ifTrue: [ 
      Transcript
        cr;
        show: 'Merger already merged'.
      ^ false ].
  unresolved := self operations select: [ :each | each resolved not ].
  unresolved isEmpty
    ifFalse: [ 
      self
        inform:
          'Cannot perform merger: unresolved conflicts: ' , unresolved asArray printString.
      ^ false ].
  loader := MCPackageLoader new.
  loader provisions addAll: self provisions.
  self applyTo: loader.
  loader load.
  self mergerCompletionBlock value.
  self merged: true.
  Transcript
    cr;
    show: 'Merger complete'.
  ^ true