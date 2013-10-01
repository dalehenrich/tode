as yet unclassified
mmfileout
  "
  mm fileout <directory-path> <config-name>
"

  | directoryPath projectName |
  directoryPath := tokens at: 2.
  projectName := tokens at: 3.
  ^ self mmfileout: projectName to: directoryPath