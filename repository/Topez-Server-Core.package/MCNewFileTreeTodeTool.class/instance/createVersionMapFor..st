as yet unclassified
createVersionMapFor: configurationClass
  | branchMap gitBranchMap ss3 tmp versionMap |
  branchMap := self createBranchMapFor: configurationClass version: self version.
  gitBranchMap := self gitBranchMap.
  self validateGitBranches: gitBranchMap against: branchMap.
  ss3 := self ss3Repo.
  tmp := self tmpRepo.
  versionMap := Dictionary new.
  self updateRepo
    ifTrue: [ self gitTool gitfetchIn: self tmpGitDir with: 'origin' ].
  branchMap
    keysAndValuesDo: [ :attribute :refList | 
      | tmpVersions gofer |
      tmpVersions := OrderedCollection new.
      self checkout: (gitBranchMap at: attribute).
      gofer := Gofer new
        disablePackageCache;
        repository: tmp;
        yourself.
      refList
        do: [ :ref | 
          | goferVersion versionRef |
          versionRef := gofer allResolved
            detect: [ :resolved | ref packageName = resolved packageName ]
            ifNone: [ self error: 'Package not found: ' , ref packageName printString ].
          (goferVersion := ss3 goferVersionFrom: ref) isNil
            ifTrue: [ 
              "unconditional copy to sse"
              tmpVersions add: versionRef ]
            ifFalse: [ 
              | snapshotSs3 shapShotTmp patch |
              "copy to ss3 only if there are changes"
              snapshotSs3 := goferVersion snapshot.
              shapShotTmp := versionRef version snapshot.
              patch := snapshotSs3 patchRelativeToBase: shapShotTmp.
              patch isEmpty
                ifFalse: [ tmpVersions add: versionRef ] ] ].
      versionMap at: attribute put: tmpVersions ].
  ^ {versionMap.
  branchMap}