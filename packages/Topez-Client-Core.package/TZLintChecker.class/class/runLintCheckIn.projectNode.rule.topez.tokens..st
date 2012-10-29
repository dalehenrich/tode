as yet unclassified
runLintCheckIn: evaluator projectNode: projectNode rule: rules topez: topez tokens: tokens
    | spec packages env checker dot lint parent |
    spec := Metacello image
        project: projectNode name;
        list.
    packages := spec version packages collect: [ :each | PackageInfo named: each name ].
    env := RBBrowserEnvironment new forPackages: packages.
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
    rules rules do: [ :rule | self buildStructureFor: rule topez: topez parentNode: parent ].
    ^ rules problemCount printString , ' rule violations'