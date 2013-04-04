accessing
packageMap
  packageMap ifNil: [ packageMap := self buildPackageMap ].
  ^ packageMap