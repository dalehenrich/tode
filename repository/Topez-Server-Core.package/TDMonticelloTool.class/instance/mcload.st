as yet unclassified
mcload
  "mc load <version-name> <repository-spec>
      load <version-name> @<repository-path>
      load <package-name> <repository-spec>
      load <package-name> @<repository-path>
  "

  | versionName repoSpec repo |
  versionName := tokens at: 2.
  Transcript
    cr;
    show:
        'Load: ' , versionName printString , ' @ ' , DateAndTime now printString.
  repoSpec := tokens at: 3.
  repo := self resolveRepositoryReference: repoSpec.
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