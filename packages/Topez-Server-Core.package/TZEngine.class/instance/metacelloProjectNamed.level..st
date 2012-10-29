metacello
metacelloProjectNamed: aProjectName level: level
    | project |
    project := Metacello image
        project: aProjectName;
        list.
    ^ self toString: project level: level