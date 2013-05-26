as yet unclassified
mcload
  "mc load <version-name> <repository-spec>
      load <version-name> @<repository-path>
  "

  | versionName repoSpec repo |
  versionName := tokens at: 2.
  Transcript
    cr;
    show:
        'Load: ' , versionName printString , ' @ ' , DateAndTime now printString.
  repoSpec := tokens at: 3.
  repo := self resolveRepositoryReference: repoSpec.
  ^ Gofer new
    version: versionName;
    repository: repo;
    load