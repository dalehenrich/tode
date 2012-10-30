api
metacelloProjects
    ^ (Metacello image
        project: [ :spec | true ];
        list) sorted: [ :a :b | a name <= b name ]