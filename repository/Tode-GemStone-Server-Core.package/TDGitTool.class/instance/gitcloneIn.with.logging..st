as yet unclassified
gitcloneIn: gitRootDirectory with: gitArgs logging: logging
  | commandBase command gitRootPath gitCommand |
  gitRootPath := gitRootDirectory fullName.
  gitCommand := 'clone'.
  commandBase := 'set -e; cd ' , gitRootPath , '; git ' , gitCommand , ' '.
  command := commandBase , gitArgs.
  ^ self performOnServer: command logging: logging