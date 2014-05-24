project
projectvalidate
  "
  project validate
"

  | invalid |
  self getSubcommandOptsMixedLongShort: {}.
  invalid := MetacelloProjectRegistration registry baselineRegistry values
    select: [ :registration | registration isValid not ].
  invalid isEmpty
    ifTrue: [ ^ 'valid' ].
  ^ invalid