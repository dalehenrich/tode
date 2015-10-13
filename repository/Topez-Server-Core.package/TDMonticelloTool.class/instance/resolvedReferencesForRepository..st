as yet unclassified
resolvedReferencesForRepository: aRepository
  | allVersionNames references resolvedReferences |
  allVersionNames := aRepository allVersionNames.
  references := (allVersionNames
    collect: [ :versionName | 
      [ GoferResolvedReference name: versionName repository: aRepository ]
        on: Error
        do: [ :ex | nil ] ])
    reject: [ :each | each == nil ].
  resolvedReferences := Dictionary new.
  references
    do: [ :reference | 
      | packageReferences packageName |
      packageName := reference metacelloPackageNameWithBranch at: 2.
      packageReferences := resolvedReferences
        at: packageName
        ifAbsent: [ 
          resolvedReferences
            at: packageName
            put:
              (SortedCollection sortBlock: [ :a :b | a versionNumber > b versionNumber ]) ].
      packageReferences add: reference ].
  ^ resolvedReferences