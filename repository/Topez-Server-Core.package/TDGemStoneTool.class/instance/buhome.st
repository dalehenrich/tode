as yet unclassified
buhome
  "bu home [<topez-backup-home-path>]"

  tokens size > 1
    ifTrue: [ self homePath: (tokens at: 2) ].
  ^ self homePath