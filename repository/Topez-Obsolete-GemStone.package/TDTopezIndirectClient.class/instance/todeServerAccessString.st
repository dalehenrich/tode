as yet unclassified
todeServerAccessString
  ^ '(((AllUsers userWithId: ''tode'' ifAbsent: [ nil ])
symbolList detect: [ :dict | dict name == #tODE ]) at: #TDTopezServer)'