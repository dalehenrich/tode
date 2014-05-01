as yet unclassified
testBrowseReferences
  "run without errors ... to keep me honest"

  | node defs |
  node := self createSelectBlockNode.
  self
    evaluateCommandString: 'browse --help references';
    evaluateCommandString: 'browse references GsNMethod';
    evaluateCommandString:
        'browse references --literal `''not yet implemented''`';
    evaluateCommandString: 'browse references --literal `#at:put:`';
    evaluateCommandString: 'browse references --literal `1.0`';
    evaluateCommandString: 'browse references --literal `#( 1 2 3)`'.
  ((System stoneVersionAt: 'gsVersion') beginsWith: '3.')
    ifTrue: [ self evaluateCommandString: 'browse references --literal `#[ 1 2 3]`' ].
  self
    evaluateCommandString:
        'browse references --class=ClassOrganizer --literal `#at:put:`';
    evaluateCommandString:
        'browse references --class=ClassOrganizer SortedCollection';
    yourself.
  defs := self
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' references --literal `true`'.
  self deny: defs isEmpty