*topez-server-24x-core
referencesToLiteral: aLiteral in: aclassSet
  "Returns an Array of two Arrays.  The first subarray contains GsMethods
 that reference given literal.  The second subarray contains indexes where the
 first reference to the literal occurs within the sourceString of the method."

  | result |
  result := self referencesToObject: aLiteral in: aclassSet.
  ^ {result.
  {}}