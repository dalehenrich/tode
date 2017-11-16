commands
gsfileSizeReport
  "
  gs fileSizeReport
"

  | stream report repositoryFiles stats |
  stream := WriteStream on: String new.
  self gsFileSizeReportOn: stream.
  report := stream contents.
  report edit: self topez.
  ^ report