as yet unclassified
mcrevert
  "mc revert <pkg-name> [<method-spec>]
      revert @<workingCopy-path> [<method-spec>]
  "

  | packageName workingCopy versionName repoSpec info repositories targetRepos gofer version |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  workingCopy ancestors isEmpty
    ifTrue: [ ^ 'No ancestors for package named ' , packageName printString , ' found' ].
  info := workingCopy ancestry ancestors first.
  versionName := info name.
  repositories := workingCopy repositoryGroup repositories
    reject: [ :repo | repo = MCCacheRepository default ].
  targetRepos := repositories
    select: [ :repo | (version := repo versionWithInfo: info) notNil ].
  tokens size > 2
    ifTrue: [ 
      "mc revert <pkg-name> <method-spec>"
      ^ self
        mcrevertMethod: (tokens copyFrom: 3 to: tokens size)
        from: versionName
        in: targetRepos ].
  Transcript
    cr;
    show:
        'Revert: ' , versionName printString , ' @ ' , DateAndTime now printString.
  gofer := Gofer new.
  targetRepos do: [ :repo | gofer repository: repo ].
  ^ [ 
  gofer
    version: versionName;
    load ]
    on: Warning
    do: [ :ex | ex resume: true ]