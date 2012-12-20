as yet unclassified
list
  "ps ist"

  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: '.processes')
    value:
      {'ds'.
      '.processes'}
    value: nil