as yet unclassified
targetRepo
  | description |
  description := (topez lookup: 'target') contents asString.
  ^ (TDMonticelloRepository fromDescription: description) repository