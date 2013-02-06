class initialization
initializeBounds
  "self initialize"

  | base width height classListsOrigin methodOrigin methodListOrigin top listWidth fullHeight halfHeight codeWidth hierarcyOrigin classDefOrigin thirdHeight twoThirdHeight thirdListWindowExtent listWindowExtent codeWindowExtent debuggerWidth |
  base := self baseWidth.	"680"
  width := base x / 80.0 * 1.1.
  height := (base y * 1.30) asInteger.
  codeWidth := (width * 80) asInteger.	"540 + 180 - 40"
  top := height // 2.	"10"
  classListsOrigin := (3 * width) asInteger.	"35 - 10"
  fullHeight := 23 * height.	"420"
  halfHeight := fullHeight // 2.	"210"
  thirdHeight := fullHeight // 3.	"140"
  twoThirdHeight := 2 * thirdHeight.
  listWidth := (28 * width) asInteger.	"250 - 10"
  debuggerWidth := 2 * listWidth.
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