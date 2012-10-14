class initialization
initializeBounds
    "self initialize"

    | classListsOrigin methodOrigin methodListOrigin top listWidth fullHeight halfHeight codeWidth classDefOrigin |
    top := 10.
    classListsOrigin := 25.
    fullHeight := 400.
    halfHeight := 200.
    listWidth := 350.
    codeWidth := 650.
    listWindowExtent := listWidth @ halfHeight.
    codeWindowExtent := codeWidth @ (fullHeight + halfHeight).
    methodOrigin := classListsOrigin + listWidth.
    methodListOrigin := methodOrigin + codeWidth.
    classDefOrigin := classListsOrigin + listWidth.
    Bounds
        at: 'superclasses' put: (classListsOrigin @ top extent: listWindowExtent);
        at: 'classes' put: (classListsOrigin @ (top + halfHeight) extent: listWidth @ fullHeight);
        at: 'subclasses' put: (classListsOrigin @ (top + (halfHeight + fullHeight)) extent: listWindowExtent);
        at: 'classDef' put: (classDefOrigin @ top extent: codeWidth @ halfHeight);
        at: 'method' put: (classDefOrigin @ (top + halfHeight) extent: codeWindowExtent);
        at: 'instanceSelectors' put: ((classDefOrigin + codeWidth) @ top extent: listWidth @ fullHeight);
        at: 'classSelectors' put: ((Bounds at: 'instanceSelectors') translateBy: 25);
        yourself