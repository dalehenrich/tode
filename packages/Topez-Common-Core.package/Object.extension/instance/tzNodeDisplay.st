*topez-common-core
tzNodeDisplay
    | strm |
    strm := TextStream on: Text new.
    self tzNodeDisplayOn: strm.
    ^ strm contents