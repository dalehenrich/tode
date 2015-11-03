as yet unclassified
gitinitIn: aDirectory with: args
  | command dirPath |
  dirPath := aDirectory fullName.
  command := 'cd ' , dirPath , '; git init ' , args.
  ^ self performOnServer: command logging: true