as yet unclassified
gssessionReport
  "
  gs sessionReport
"

  | aStream report |
  self getOptsMixedLongShort: {}.
  aStream := WriteStream on: String new.
  self gsSessionReportOn: aStream.
  report := aStream contents.
  report edit: self topez.
  ^ report