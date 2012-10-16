class initialization
initializeBounds
    "self initialize"

    | classListsOrigin methodOrigin methodListOrigin top listWidth fullHeight halfHeight codeWidth classDefOrigin thirdHeight twoThirdHeight |
    top := 10.
    classListsOrigin := 35.
    fullHeight := 380.
    halfHeight := 190.
    thirdHeight := 140.
    twoThirdHeight := 2 * thirdHeight.
    listWidth := 250.
    codeWidth := 600.
    listWindowExtent := listWidth @ thirdHeight.
    codeWindowExtent := codeWidth @ (fullHeight + halfHeight).
    methodOrigin := classListsOrigin + listWidth.
    methodListOrigin := methodOrigin + codeWidth.
    classDefOrigin := classListsOrigin + listWidth.
    Bounds
        at: 'superclasses' put: (classListsOrigin @ top extent: listWindowExtent);
        at: 'classes' put: (classListsOrigin @ (top + thirdHeight) extent: listWidth @ fullHeight);
        at: 'subclasses' put: (classListsOrigin @ (top + (thirdHeight + fullHeight)) extent: listWindowExtent);
        at: 'classDef' put: (classDefOrigin @ top extent: codeWidth @ thirdHeight);
        at: 'method' put: (classDefOrigin @ (top + thirdHeight) extent: codeWindowExtent);
        at: 'instanceSelectors' put: ((classDefOrigin + codeWidth) @ top extent: listWidth @ twoThirdHeight);
        at: 'classSelectors' put: ((classDefOrigin + codeWidth + listWidth) @ top extent: listWidth @ twoThirdHeight);
        at: #'implementors'
            put: ((classDefOrigin + codeWidth) @ (top + twoThirdHeight) extent: (2 * listWidth) @ fullHeight);
        yourself