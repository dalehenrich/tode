as yet unclassified
mclist: pattern
  | wcList |
  wcList := self findMatchingPackages: pattern topez: topez.
  ^ wcList sort: [ :a :b | a packageName < b packageName ]