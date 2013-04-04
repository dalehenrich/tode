as yet unclassified
breakList: breakTokens
  "list"

  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: self haloPath)
    value:
      {'ds'.
      (self haloPath , 'breakpoints')}
    value: nil