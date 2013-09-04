as yet unclassified
applyTo: anObject
  | conflictModification mergeModification |
  conflictModification := self conflict operation.
  mergeModification := conflictModification class
    of: conflictModification baseDefinition
    to: self selectedDefinition.
  mergeModification applyTo: anObject