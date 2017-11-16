as yet unclassified
mcdirty
  "mc dirty"

  | block |
  block := [ 
  | dirty |
  dirty := MCWorkingCopy allManagers select: [ :wc | wc modified == true ].
  dirty := dirty sort: [ :a :b | a packageName <= b packageName ] ].
  self mcBrowseWorkingCopies: block label: 'Dirty Packages'.
  ^ block value