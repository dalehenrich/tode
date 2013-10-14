as yet unclassified
mrcreate
  "mr create <repository-spec>"

  | description |
  description := tokens at: 2.
  ^ self mrcreate: description