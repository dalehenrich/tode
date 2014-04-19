as yet unclassified
testBrowseReferences
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse references GsNMethod';
    evaluateCommandString:
        'browse references --literal `''not yet implemented''`';
    evaluateCommandString: 'browse references --literal `#at:put:`';
    evaluateCommandString: 'browse references --literal `1.0`';
    evaluateCommandString: 'browse references --literal `#( 1 2 3)`';
    evaluateCommandString: 'browse references --literal `#[ 1 2 3]`';
    evaluateCommandString:
        'browse references --class=ClassOrganizer --literal `#at:put:`';
    evaluateCommandString:
        'browse references --class=ClassOrganizer SortedCollection';
    yourself