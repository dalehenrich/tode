as yet unclassified
initializeBounds
  "self initialize"

  | base width height classListsOrigin top listWidth fullHeight codeWidth hierarcyOrigin classDefOrigin thirdHeight twoThirdHeight thirdListWindowExtent listWindowExtent codeWindowExtent debuggerWidth |
  base := self baseWidth.	"680"
  width := base x / 80.0 * 1.1.
  height := (base y * 1.30) asInteger.
  codeWidth := (width * self codeWindowWidth) asInteger.	"540 + 180 - 40"
  top := (height * self windowOrigin y) asInteger.	"10"
  classListsOrigin := (self windowOrigin x * width) asInteger.	"35 - 10"
  fullHeight := self codeWindowHeight * height.	"420"
  thirdHeight := fullHeight // 3.	"140"
  twoThirdHeight := 2 * thirdHeight.
  listWidth := (self listWindowWidth * width) asInteger.	"250 - 10"
  debuggerWidth := (self debuggerWindowWidth * width) asInteger.
  listWindowExtent := listWidth @ twoThirdHeight.
  thirdListWindowExtent := listWidth @ thirdHeight.
  codeWindowExtent := codeWidth @ fullHeight.
  hierarcyOrigin := classListsOrigin + listWidth.
  classDefOrigin := hierarcyOrigin + listWidth.
  Bounds
    at: #'configurations'
      put: (classListsOrigin @ top extent: thirdListWindowExtent);
    at: #'packages'
      put:
        (classListsOrigin @ (top + thirdHeight) extent: thirdListWindowExtent);
    at: #'superclasses'
      put: (hierarcyOrigin @ top extent: thirdListWindowExtent);
    at: #'classes'
      put:
        (classListsOrigin @ (top + twoThirdHeight) extent: listWidth @ twoThirdHeight);
    at: #'subclasses'
      put:
        (classListsOrigin @ (top + (thirdHeight + fullHeight))
            extent: thirdListWindowExtent);
    at: #'classDef'
      put: (classDefOrigin @ top extent: codeWidth - listWidth @ thirdHeight);
    at: #'method'
      put: (hierarcyOrigin @ (top + thirdHeight) extent: codeWindowExtent);
    at: #'instanceSelectors'
      put: (hierarcyOrigin + codeWidth @ top extent: listWindowExtent);
    at: #'classSelectors'
      put:
        (hierarcyOrigin + codeWidth + listWidth @ top extent: listWindowExtent);
    at: #'implementors'
      put:
        (hierarcyOrigin + codeWidth @ (top + twoThirdHeight)
            extent: 2 * listWidth @ twoThirdHeight);
    at: #'debugger'
      put:
        (hierarcyOrigin + codeWidth @ (top + twoThirdHeight)
            extent: debuggerWidth @ twoThirdHeight);
    at: #'receiver'
      put:
        (hierarcyOrigin + codeWidth @ (top + thirdHeight + codeWindowExtent y)
            extent: listWidth @ twoThirdHeight);
    at: #'context'
      put:
        (hierarcyOrigin + codeWidth + listWidth
            @ (top + thirdHeight + codeWindowExtent y)
            extent: listWidth @ twoThirdHeight);
    at: #'evaluator'
      put:
        (classListsOrigin @ (top + thirdHeight + codeWindowExtent y)
            extent: codeWidth @ (self shellWindowHeight * height));
    at: #'inspector'
      put:
        (classListsOrigin + codeWidth @ (top + thirdHeight + codeWindowExtent y)
            extent: codeWidth @ (self shellWindowHeight * height));
    yourself