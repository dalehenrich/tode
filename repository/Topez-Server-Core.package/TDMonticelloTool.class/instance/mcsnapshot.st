as yet unclassified
mcsnapshot
  "
  mc snapshot <version-name> <repository-spec>
     snapshot <version-name> @<repository-path>
"

  | versionName version |
  versionName := tokens at: 2.
  version := self versionFor: versionName in: (tokens at: 3).
  ^ version snapshot