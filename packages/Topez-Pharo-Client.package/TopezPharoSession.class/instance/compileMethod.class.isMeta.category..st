api
compileMethod: source class: classProxy isMeta: isMeta category: categoryName
    | selector cls theClass |
    cls := classProxy asTopezProxy native.
    theClass := cls theNonMetaClass.
    isMeta
        ifTrue: [ cls := cls class ].
    selector := cls compile: source classified: categoryName.
    ^ TZMethodElement new
        isMeta: isMeta;
        elementClass: theClass asTopezProxy;
        elementClassName: theClass name;
        selector: selector;
        category: categoryName;
        setSource;
        yourself