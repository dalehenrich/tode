as yet unclassified
createVersionMapFor: configurationClass version: versionString updateGitRepos: updateGitRepos
  | branchMap gitBranchMap ss3 versionMap |
  branchMap := self
    createBranchMapFor: configurationClass
    version: versionString.
  gitBranchMap := self gitBranchMap.
  self validateGitBranches: gitBranchMap against: branchMap.
  ss3 := self ss3Repo.
  versionMap := Dictionary new.
  branchMap
    keysAndValuesDo: [ :attribute :refList | 
      | tmpVersions tmp gofer |
      tmpVersions := OrderedCollection new.
      self
        checkout: (gitBranchMap at: attribute)
        andUpdateGitRepos: updateGitRepos.
      tmp := self tmpRepo.
      gofer := Gofer new
        disablePackageCache;
        repository: tmp;
        yourself.
      refList
        do: [ :ref | 
          | version versionRef |
          versionRef := gofer allResolved
            detect: [ :resolved | ref packageName = resolved packageName ]
            ifNone: [  ].
          versionRef isNil
            ifTrue: [ self halt ]
            ifFalse: [ 
              (version := ss3 goferVersionFrom: ref) isNil
                ifTrue: [ 
                  "unconditional copy to sse"
                  tmpVersions add: versionRef ]
                ifFalse: [ 
                  | snapshotSs3 shapShotTmp patch |
                  "copy to ss3 only if there are changes"
                  snapshotSs3 := version snapshot.
                  shapShotTmp := versionRef version snapshot.
                  patch := snapshotSs3 patchRelativeToBase: shapShotTmp.
                  patch isEmpty
                    ifFalse: [ tmpVersions add: versionRef ] ] ] ].
      versionMap at: attribute put: tmpVersions ].
  ^ {versionMap.
  branchMap}