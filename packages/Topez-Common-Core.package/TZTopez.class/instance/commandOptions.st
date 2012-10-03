accessing
commandOptions
    commandOptions ifNil: [ commandOptions := TZTopezOptions new ].
    ^ commandOptions