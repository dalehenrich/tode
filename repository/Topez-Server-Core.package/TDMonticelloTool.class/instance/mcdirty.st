as yet unclassified
mcdirty
  "mc dirty"

  | dirty |
  dirty := MCWorkingCopy allManagers select: [ :wc | wc modified ].
  dirty := dirty sort: [ :a :b | a packageName <= b packageName ].
  self mcBrowseWorkingCopies: dirty label: 'Dirty Packages'.
  ^ dirty