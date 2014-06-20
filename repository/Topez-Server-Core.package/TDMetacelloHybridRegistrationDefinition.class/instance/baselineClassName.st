accessing
baselineClassName
  self baselineProjectSpec ifNotNil: [ :spec | ^ spec className ].
  ^ nil