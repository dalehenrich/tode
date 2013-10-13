as yet unclassified
mcrevertWorkingCopy: workingCopy
  | versionName info repositories targetRepos gofer version |
  info := workingCopy ancestry ancestors first.
  versionName := info name.
  repositories := workingCopy repositoryGroup repositories
    reject: [ :repo | repo = MCCacheRepository default ].
  targetRepos := repositories
    select: [ :repo | (version := repo versionWithInfo: info) notNil ].
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