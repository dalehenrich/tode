command definition
mczCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'diff'
            put: [ :evaluator :topez :tokens | 
                    | projectNode diff |
                    projectNode := topez lookup: '/projects/' , (tokens at: 2).
                    diff := '#!/bin/input' , String cr
                        , (topez diffModifiedPackagesForProjectNamed: projectNode name) asTopezNative.
                    topez currentNode
                        addChildNode:
                            (TZBinLeafNode new
                                name: 'diff';
                                contents: diff;
                                yourself) ];
        at: 'save'
            put: [ :evaluator :topez :tokens | 
                    | projectNode |
                    projectNode := topez lookup: '/projects/' , (tokens at: 2).
                    evaluator
                        accumulateTextAndDo: [ :doitStream | 
                            evaluator exception: nil.
                            topez
                                saveModifiedPackagesForProjectNamed: projectNode name
                                commitMessage: doitStream contents ].
                    '' ];
        at: 'reload'
            put: [ :evaluator :topez :tokens | 
                    | projectNode |
                    projectNode := topez lookup: '/projects/' , (tokens at: 2).
                    evaluator exception: nil.
                    topez
                        run:
                            'Metacello image
	baseline: #(' , projectNode name printString
                                ,
                                    ');
	silently;
	get.
Metacello image
	baseline: #(' , projectNode name printString
                                ,
                                    ');
	silently;
	load.' ];
        yourself