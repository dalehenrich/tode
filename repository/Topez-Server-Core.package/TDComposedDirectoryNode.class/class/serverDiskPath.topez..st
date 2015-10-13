instance creation-simple
serverDiskPath: diskPath topez: topez
  | dir |
  dir := ServerFileDirectory on: diskPath.
  ^ self
    link: (dir asTDObjectNode: nil topez: topez aspect: #'view')
    topez: topez