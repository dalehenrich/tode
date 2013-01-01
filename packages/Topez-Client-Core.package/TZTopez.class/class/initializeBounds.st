class initialization
initializeBounds
  "self initialize"

  | classListsOrigin methodOrigin methodListOrigin top listWidth fullHeight halfHeight codeWidth classDefOrigin thirdHeight twoThirdHeight thirdListWindowExtent listWindowExtent codeWindowExtent debuggerWidth |
  top := 10.
  classListsOrigin := 35 - 10.
  fullHeight := 420.
  halfHeight := 210.
  thirdHeight := 140.
  twoThirdHeight := 2 * thirdHeight.
  listWidth := 250 - 10.
  debuggerWidth := 2 * listWidth.
  codeWidth := 540 + 180 - 40.
  listWindowExtent := listWidth @ twoThirdHeight.
  thirdListWindowExtent := listWidth @ thirdHeight.
  codeWindowExtent := codeWidth @ fullHeight.
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
      put: ((classDefOrigin + codeWidth) @ (top + twoThirdHeight) extent: (2 * listWidth) @ twoThirdHeight);
    at: #'debugger' put: ((classDefOrigin + codeWidth) @ (top + twoThirdHeight) extent: debuggerWidth @ twoThirdHeight);
    at: #'receiver'
      put: ((classDefOrigin + codeWidth) @ (top + thirdHeight + codeWindowExtent y) extent: listWidth @ twoThirdHeight);
    at: #'context'
      put:
        ((classDefOrigin + codeWidth + listWidth) @ (top + thirdHeight + codeWindowExtent y) extent: listWidth @ twoThirdHeight);
    at: #'evaluator'
      put: (classListsOrigin @ (top + thirdHeight + codeWindowExtent y) extent: codeWidth @ twoThirdHeight);
    at: #'inspector'
      put:
        ((classListsOrigin + codeWidth) @ (top + thirdHeight + codeWindowExtent y) extent: codeWidth @ twoThirdHeight);
    yourself