testing
safeToIgnore
  (self resolved and: [ self stage == #'deletedByBoth' ])
    ifTrue: [ ^ us = them ].
  ^ false