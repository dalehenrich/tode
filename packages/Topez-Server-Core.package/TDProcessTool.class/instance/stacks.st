as yet unclassified
stacks
  "ps stacks"

  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: '.processes')
    value:
      {'ds'.
      '.processes'.
      2}
    value: nil