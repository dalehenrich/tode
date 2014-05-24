as yet unclassified
configRepo
  | description |
  description := (topez lookup: 'config') contents asString.
  ^ (TDMonticelloRepository fromDescription: description) repository