accessing
activateRoassalEditor
false ifTrue: [  (self roassalEditor halt
    buildRoassalMorph;
    yourself) roassalView open].
  self activeEditor: self roassalEditor