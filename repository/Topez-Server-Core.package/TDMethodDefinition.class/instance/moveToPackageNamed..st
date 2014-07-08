as yet unclassified
moveToPackageNamed: aPackageName
  self moveToProtocolNamed: '*' , aPackageName asLowercase.
  ^ true