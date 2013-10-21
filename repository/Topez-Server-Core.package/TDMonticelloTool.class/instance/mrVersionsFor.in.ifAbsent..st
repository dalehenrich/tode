as yet unclassified
mrVersionsFor: packageName in: repo ifAbsent: absentBlock
  | resolvedReferences |
  resolvedReferences := self resolvedReferencesForRepository: repo.
  ^ resolvedReferences at: packageName ifAbsent: absentBlock