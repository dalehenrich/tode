as yet unclassified
packageNamed: aPackageName ifAbsent: absentBlock
  ^ self packageDefinitions at: aPackageName ifAbsent: absentBlock