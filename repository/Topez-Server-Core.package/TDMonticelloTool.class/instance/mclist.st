as yet unclassified
mclist
  "mc list <regex-pkg-pattern> "

  | pattern label block |
  label := 'Working Copies'.
  tokens size > 1
    ifTrue: [ 
      pattern := tokens at: 2.
      label := 'Packages matching: ' , pattern printString ].
  block := [ 
  | wcList |
  wcList := self findMatchingPackages: pattern topez: topez.
  wcList := wcList sort: [ :a :b | a packageName < b packageName ] ].
  self mcBrowseWorkingCopies: block label: label.
  ^ block value