private
lookupNode: nodePath
  | dir |
  dir := ServerFileDirectory on: '/tmp/tode/' , nodePath.
  dir assureExistence.
  ^ dir asTDNode: self topez