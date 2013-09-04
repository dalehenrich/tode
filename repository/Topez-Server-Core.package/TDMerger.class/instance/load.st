accessing
load
  | unresolved loader |
  self loaded
    ifTrue: [ 
      Transcript
        cr;
        show: 'Merger already loaded'.
      ^ self ].
  unresolved := self operations select: [ :each | each resolved not ].
  unresolved isEmpty
    ifFalse: [ 
      self
        error:
          'Cannot load merger: unresolved conflicts: ' , unresolved asArray printString ].
  loader := MCPackageLoader new.
  loader provisions addAll: self provisions.
  self applyTo: loader.
  loader load.
  self mergerCompletionBlock value.
  self loaded: true.
  Transcript
    cr;
    show: 'Merger complete'