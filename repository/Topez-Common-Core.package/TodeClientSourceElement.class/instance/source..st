as yet unclassified
source: aString
  "bit of a hack to avoid issues until all server-side receivers return a boolean)"

  ^(self topez setSourceForClientSourceElement: self source: aString) == true