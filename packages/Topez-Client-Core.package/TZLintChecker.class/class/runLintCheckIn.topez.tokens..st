as yet unclassified
runLintCheckIn: evaluator topez: topez tokens: tokens
    | projectNode spec packages env rules checker dot lint parent |
    "lint /projects/Topez"
    projectNode := topez lookup: (tokens at: 2).
    spec := Metacello image
        project: projectNode name;
        list.
    packages := spec version packages collect: [ :each | PackageInfo named: each name ].
    env := RBBrowserEnvironment new forPackages: packages.
    rules := RBCompositeLintRule lintChecks.
    checker := RBSmalllintChecker new.
    checker
        rule: rules;
        context: RBSmalllintContext new;
        environment: env;
        methodBlock: [  ].
    [ checker run ]
        ensure: [ checker release ].
    dot := topez baseNodeFor: '.'.
    (dot childNamed: 'lint' ifAbsent: [ nil ]) ifNotNil: [ :node | dot removeChildNode: node ].
    lint := dot childNamed: 'lint' addIfAbsent: true.
    parent := lint.
    rules rules do: [ :rule | self buildStructureFor: rule parentNode: parent ].
    ^ rules problemCount printString , ' rule violations'