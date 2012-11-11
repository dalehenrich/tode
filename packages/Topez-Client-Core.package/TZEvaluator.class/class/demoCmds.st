command definition
demoCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: #'demoFilterSenders'
            put: [ :evaluator :topez :tokens | 
                    | list selector classNames ar |
                    selector := tokens at: 2.
                    list := topez sendersOf: selector.
                    classNames := (ar := (topez lookup: '/projects/Topez/classes') contents)
                        collect: [ :each | each asTopezNative ].
                    list := list select: [ :each | classNames includes: each elementClassName asTopezNative asString ].
                    topez
                        editList: list
                        label: 'My Senders of ' , selector
                        inWindow: nil
                        at: 'implementors'.
                    '' ];
        at: #'roassal'
            put: [ :evaluator :topez :tokens | 
                    | rawView view classes superClassMap projectProxy |
                    rawView := ROView new.
                    view := ROMondrianViewBuilder view: rawView.
                    classes := OrderedCollection new.
                    superClassMap := Dictionary new.
                    projectProxy := topez metacelloProjectNamed: (tokens at: 2).
                    (topez classesInMetacelloProject: projectProxy)
                        do: [ :p | 
                            | nm |
                            nm := p name trimBoth.
                            superClassMap at: nm put: p elementSuperClassName asTopezNative asString.
                            classes add: nm ].
                    view interaction
                        item: 'inspect' action: [ :v | v model inspect ];
                        item: 'browse' action: [ :v | v model browse ].
                    view shape rectangle
                        if: [ :n | n beginsWith: 'Metacello' ] fillColor: Color green;
                        if: [ :n | n beginsWith: 'TZ' ] fillColor: Color blue;
                        if: [ :n | n beginsWith: 'Rc' ] fillColor: Color red.
                    view nodes: classes.
                    view edgesFrom: [ :element | superClassMap at: element ].
                    view treeLayout.
                    ROEaselMorphic new populateMenuOn: view.
                    view open.
                    '' ];
        yourself