as yet unclassified
testFindReferences
  "run without errors ... to keep me honest"

  | node defs |
  node := self createSelectBlockNode.
  self
    evaluateCommandString: 'find --help references';
    evaluateCommandString: 'find references GsNMethod';
    evaluateCommandString: 'find references --literal `''not yet implemented''`';
    evaluateCommandString: 'find references --literal `#at:put:`';
    evaluateCommandString: 'find references --literal `1.0`';
    evaluateCommandString: 'find references --literal `#( 1 2 3)`'.
  ((System stoneVersionAt: 'gsVersion') beginsWith: '3.')
    ifTrue: [ self evaluateCommandString: 'find references --literal `#[ 1 2 3]`' ].
  self
    evaluateCommandString:
        'find references --class=ClassOrganizer --literal `#at:put:`';
    evaluateCommandString:
        'find references --class=ClassOrganizer SortedCollection';
    yourself.
  defs := self
    evaluateCommandString:
      'find --scriptPath=' , node printString , ' references --literal `true`'.
  self deny: defs isEmpty