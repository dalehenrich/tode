testing
safeToIgnore
  self stage == #'deletedByBoth'
    ifTrue: [ ^ us = them ].
  ^ false