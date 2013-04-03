as yet unclassified
selectClassNamed: className topez: topez
  | cls |
  cls := Smalltalk classNamed: className.
  self updatePackageAndConfigFor: cls category topez: topez