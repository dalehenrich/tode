*topez-server-24x-core
includesCategory: aString
  "Returns true if aString is equivalent to the name of a category in the
 receiver, false otherwise."

  | aSym |
  aSym := Symbol _existingWithAll: aString.
  aSym ifNil: [ ^ false ].
  self categoryNames do: [ :name |
    name == aSym
      ifTrue: [ ^ true ] ].
  ^ false
