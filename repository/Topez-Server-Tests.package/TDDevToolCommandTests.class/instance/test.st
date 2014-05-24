as yet unclassified
test
  | tool cmd |
  TDCommandLine
    line: 'browse --scriptPath=/home/. method --filter=`[:def | true]` at:put:'
    forEachCommand: [ :command | 
      | sub scriptPath filter |
      self assert: command command = 'browse'.
      tool := TDAbstractDevTool
        topez: self topez
        objIn: nil
        todeCommand: command.
      tool
        getOptsMixedLongShort:
          {#('help' $h #'optional').
          #('scriptPath' nil #'optional')}.
      scriptPath := tool options at: 'scriptPath' ifAbsent: [ 'not found' ].
      self assert: scriptPath = '/home/.'.
      sub := tool subCommandToken.
      self assert: sub = 'method'.
      tool getSubcommandOptsMixedLongShort: {#('filter' nil #'required')}.
      filter := tool subOptions at: 'filter' ifAbsent: [ 'not found' ].
      self assert: filter = '[:def | true]' ]