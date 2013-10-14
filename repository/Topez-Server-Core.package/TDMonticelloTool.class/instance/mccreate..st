as yet unclassified
mccreate: packageName
  PackageInfo registerPackageName: packageName.
  ^ MCWorkingCopy forPackage: (MCPackage new name: packageName)