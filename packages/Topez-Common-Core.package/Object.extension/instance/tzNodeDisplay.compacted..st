*topez-common-core
tzNodeDisplay: limit compacted: compacted
  | strm |
  strm := TextStream on: Text new.
  self tzNodeDisplayOn: strm limit: limit compacted: compacted.
  ^ strm contents