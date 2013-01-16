*topez-common-core
tzNodeDisplay: limit displayOops: displayOops compacted: compacted
  | strm |
  strm := TextStream on: Text new.
  self
    tzNodeDisplayOn: strm
    limit: limit
    displayOops: displayOops
    compacted: compacted.
  ^ strm contents