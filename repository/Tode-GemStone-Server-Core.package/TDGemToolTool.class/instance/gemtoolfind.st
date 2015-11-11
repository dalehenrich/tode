find
gemtoolfind
  "
  gemtool [--help] find ( class | hierarchy | references | method | senders | string )
"

  | cmd |
  self getSubcommandOptsMixedLongShort: {}.
  subArguments isEmpty
    ifTrue: [ 
      self
        error:
          'Missing required argument `( class | hierarchy | references | method | senders | string )`. See `man gemtool find` for details.' ].
  cmd := subArguments at: 1.
  cmd = 'class'
    ifTrue: [ ^ self gemtoolfindClass ].
  cmd = 'hierarchy'
    ifTrue: [ ^ self gemtoolfindHierarchy ].
  cmd = 'references'
    ifTrue: [ ^ self gemtoolfindReferences ].
  cmd = 'method'
    ifTrue: [ ^ self gemtoolfindMethod ].
  cmd = 'senders'
    ifTrue: [ ^ self gemtoolfindSenders ].
  cmd = 'string'
    ifTrue: [ ^ self gemtoolfindString ]