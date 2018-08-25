as yet unclassified
mrcreds
  "
  mr creds <repository-spec> <username> <password>
     creds @<repository-path> <username> <password>
  "

  | repo username password |
  repo := self resolveRepositoryReference: (tokens at: 2).
  username := tokens at: 3.
  password := tokens at: 4.
  ^ self mrcreds: repo username: username password: password