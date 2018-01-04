as yet unclassified
gitrevparseShowTopLevelIn: aDirectory
  | command dirPath |
  dirPath := aDirectory fullName.
  command := 'set -e; cd ' , dirPath , '; git rev-parse --show-toplevel'.
  ^ self performOnServer: command logging: true