as yet unclassified
mccreate
  "mc create <pkg-name>"

  | packageName |
  packageName := tokens at: 2.
  PackageInfo registerPackageName: packageName.
  ^ MCWorkingCopy forPackage: (MCPackage new name: packageName)