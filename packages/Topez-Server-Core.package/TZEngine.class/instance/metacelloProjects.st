metacello
metacelloProjects
    | projects |
    projects := Metacello image
        project: [ :spec | true ];
        list.
    ^ projects sorted: [ :a :b | a name <= b name ]