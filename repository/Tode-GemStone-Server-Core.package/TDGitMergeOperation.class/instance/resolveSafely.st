as yet unclassified
resolveSafely
  self stage == #'deletedByBoth'
    ifTrue: [ ^ self selectUs ]