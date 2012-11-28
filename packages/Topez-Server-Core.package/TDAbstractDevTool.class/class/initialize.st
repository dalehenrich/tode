as yet unclassified
initialize
    "self initialize"

    | topez |
    topez := TDTopezServer default.
    self subclasses do: [ :cl | cl installOn: topez ]