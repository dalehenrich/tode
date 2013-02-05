as yet unclassified
category: categoryName matches: packageName
  | prefixSize catSize |
  categoryName ifNil: [ ^ false ].
  catSize := categoryName size.
  prefixSize := packageName size.
  catSize < prefixSize
    ifTrue: [ ^ false ].
  (categoryName findString: packageName startingAt: 1 caseSensitive: false) = 1
    ifFalse: [ ^ false ].
  ^ (categoryName at: packageName size + 1 ifAbsent: [ ^ true ]) = $-