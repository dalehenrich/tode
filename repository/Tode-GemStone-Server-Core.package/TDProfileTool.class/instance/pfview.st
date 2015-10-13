tode commands
pfview
  "
  pf view [--label=<window-label>] [--limit=<tally-limit>] [--sort=tally|total]
"

  | label limit sortKey |
  self
    getSubcommandOptsMixedLongShort:
      {#('label' nil #'required').
      #('limit' nil #'required').
      #('sort' nil #'required')}.
  subOptions
    at: 'label'
    ifPresent: [ :arg | label := arg ]
    ifAbsent: [ label := self defaultLabel ].
  subOptions
    at: 'limit'
    ifPresent: [ :arg | limit := arg asNumber ]
    ifAbsent: [ limit := self defaultTallyLimit ].
  subOptions
    at: 'sort'
    ifPresent: [ :arg | sortKey := arg ]
    ifAbsent: [ sortKey := self defaultSortKey ].
  ^ self
    pfView: self profMonitor
    label: label
    limit: limit
    sortKey: sortKey