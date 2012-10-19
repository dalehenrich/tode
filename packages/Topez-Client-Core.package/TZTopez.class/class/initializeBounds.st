class initialization
initializeBounds
    "self initialize"

    | classListsOrigin methodOrigin methodListOrigin top listWidth fullHeight halfHeight codeWidth classDefOrigin thirdHeight twoThirdHeight thirdListWindowExtent listWindowExtent codeWindowExtent |
    top := 10.
    classListsOrigin := 35.
    fullHeight := 380.
    halfHeight := 190.
    thirdHeight := 140.
    twoThirdHeight := 2 * thirdHeight.
    listWidth := 250.
    codeWidth := 540.
    listWindowExtent := listWidth @ twoThirdHeight.
    thirdListWindowExtent := listWidth @ thirdHeight.
    codeWindowExtent := codeWidth @ (fullHeight + (halfHeight / 2)).
    methodOrigin := classListsOrigin + listWidth.
    methodListOrigin := methodOrigin + codeWidth.
    classDefOrigin := classListsOrigin + listWidth.
    Bounds
        at: 'superclasses' put: (classListsOrigin @ top extent: thirdListWindowExtent);
        at: 'classes' put: (classListsOrigin @ (top + thirdHeight) extent: listWidth @ fullHeight);
        at: 'subclasses' put: (classListsOrigin @ (top + (thirdHeight + fullHeight)) extent: thirdListWindowExtent);
        at: 'classDef' put: (classDefOrigin @ top extent: codeWidth @ thirdHeight);
        at: 'method' put: (classDefOrigin @ (top + thirdHeight) extent: codeWindowExtent);
        at: 'instanceSelectors' put: ((classDefOrigin + codeWidth) @ top extent: listWindowExtent);
        at: 'classSelectors' put: ((classDefOrigin + codeWidth + listWidth) @ top extent: listWindowExtent);
        at: #'implementors'
            put: ((classDefOrigin + codeWidth) @ (top + twoThirdHeight) extent: (2 * listWidth) @ fullHeight);
        yourself