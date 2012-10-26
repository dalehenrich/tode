command definition
installNodes
    | scriptsNode commonNode |
    self installRootNodes.
    scriptsNode := self rootNode childNamed: 'scripts' addIfAbsent: true.
    commonNode := scriptsNode childNamed: 'common' addIfAbsent: true.
    (commonNode childNamed: 'topez' addIfAbsent: true)
        addLeaf: 'filterClasses'
            contents:
                '(self editorModelNamed: #topezClasses) listEditor
  listFilter: [:element | element inExtensionClassList]';
        addLeaf: 'testing' contents: '3+4';
        yourself.
    (commonNode childNamed: 'run' addIfAbsent: true)
        addLeaf: 'testing' contents: '3+4';
        yourself.
    (commonNode childNamed: 'input' addIfAbsent: true)
        addLeaf: 'topezFilter'
            contents:
                'set project Topez
edit #topezClasses prclasses
topez filterClasses
edit prtests';
        addLeaf: 'topez'
            contents:
                'set project Topez
edit prtests
edit prclasses';
        addLeaf: 'testing'
            contents:
                'run
3+4
%';
        addLeaf: 'tz'
            contents:
                'instance
| str |
str := TextStream on: Text new.
str 
  nextPutAll: ''No emphasis''; 
  space; 
  nextPutAll: (Text string: ''bold'' attribute: TextEmphasis bold);
  space; 
  nextPutAll: (Text string: ''blue'' attribute: TextColor blue);
  space; 
  nextPutAll: (Text string: ''bold n blue'' attributes: {TextEmphasis bold. TextColor blue});
  yourself.
str contents
%';
        yourself