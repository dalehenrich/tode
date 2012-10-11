command definition
defaultScripts
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    scripts
        at: 'topez'
            put:
                (Dictionary new
                        at: 'filterClasses'
                            put:
                                '(self editorModelNamed: #topezClasses) listEditor
  listFilter: [:element | element inExtensionClassList]';
                        yourself);
        at: 'run' put: Dictionary new;
        at: 'input'
            put:
                (Dictionary new
                        at: 'topez'
                            put:
                                'set project Topez
edit #topezClasses prclasses
topez filterClasses';
                        yourself);
        yourself