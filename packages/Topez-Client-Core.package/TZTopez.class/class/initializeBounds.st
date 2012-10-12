class initialization
initializeBounds
    "self initialize"

    | classListsOrigin methodOrigin methodListOrigin top listWidth fullHeight halfHeight codeWidth classDefOrigin |
    top := classListsOrigin := 25.
    fullHeight := 400.
    halfHeight := 200.
    listWidth := 350.
    codeWidth := 650.
    methodOrigin := classListsOrigin + listWidth.
    methodListOrigin := methodOrigin + codeWidth.
    classDefOrigin := classListsOrigin + listWidth.
    Bounds
        at: 'superclasses' put: (classListsOrigin @ top extent: listWidth @ halfHeight);
        at: 'classes' put: (classListsOrigin @ (top + halfHeight) extent: listWidth @ fullHeight);
        at: 'subclasses' put: (classListsOrigin @ (top + (halfHeight + fullHeight)) extent: listWidth @ halfHeight);
        at: 'classDef' put: (classDefOrigin @ top extent: codeWidth @ halfHeight);
        at: 'method' put: (classDefOrigin @ (top + halfHeight) extent: codeWidth @ (fullHeight + halfHeight));
        at: 'selectors' put: ((classDefOrigin + codeWidth) @ top extent: listWidth @ fullHeight);
        yourself