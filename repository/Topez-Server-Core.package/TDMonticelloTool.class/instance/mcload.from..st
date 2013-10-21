as yet unclassified
mcload: versionName from: repo
  Transcript
    cr;
    show:
        'Load: ' , versionName printString , ' @ ' , DateAndTime now printString.
  ^ (GoferResolvedReference name: versionName repository: repo) version == nil
    ifTrue: [ 
      "assume that there is no version information"
      Gofer new
        package: versionName;
        repository: repo;
        load ]
    ifFalse: [ 
      "version does exist in the repo"
      Gofer new
        version: versionName;
        repository: repo;
        load ]