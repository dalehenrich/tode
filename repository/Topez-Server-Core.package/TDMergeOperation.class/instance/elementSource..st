as yet unclassified
elementSource: aSTONString
  self displayDiffs
    ifTrue: [ 
      self
        inform:
          'Disable diffs and try again. Diff introduces unwanted leading characters'.
      ^ false ].
  self mergeSource: (self objectSerializer fromString: aSTONString).
  ^ true