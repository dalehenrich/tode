command definition
commonScripts
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    "scripts that apply to gemstone and native"

    scripts
        at: 'topez'
            put:
                (Dictionary new
                        at: 'filterClasses'
                            put:
                                '(self editorModelNamed: #topezClasses) listEditor
  listFilter: [:element | element inExtensionClassList]';
                        at: 'testing' put: '3+4';
                        yourself);
        at: 'run'
            put:
                (Dictionary new
                        at: 'testing' put: '3+4';
                        yourself);
        at: 'input'
            put:
                (Dictionary new
                        at: 'topezFilter'
                            put:
                                'set project Topez
edit #topezClasses prclasses
topez filterClasses
edit prtests';
                        at: 'topez'
                            put:
                                'set project Topez
set class TZEvaluator
edit prtests
edit prclasses';
                        at: 'testing'
                            put:
                                'run
3+4
%';
                        at: 'tz'
                            put:
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
                        yourself);
        yourself