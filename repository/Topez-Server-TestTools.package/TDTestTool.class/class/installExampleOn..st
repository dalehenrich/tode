as yet unclassified
installExampleOn: aTDTopezServer
  (aTDTopezServer lookup: '/examples')
    _addBasicChildNode:
        (TDSmalltalkLeafNode new
            name: 'sunit';
            contents:
                '| suite result |

suite := TestSuite named: ''Simple SUnit Suite''.
suite 
	addTest: (SUnitTest selector: #noop);
	addTest: (SUnitTest selector: #fail);
	addTest: (SUnitTest selector: #error).';
            yourself);
    yourself