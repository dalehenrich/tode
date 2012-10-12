api
compileMethod: source class: classProxy isMeta: isMeta category: categoryName
    | selector cls |
    cls := classProxy native.
    isMeta
        ifTrue: [ cls := cls class ].
    selector := cls compile: source classified: categoryName.
    ^ TZMethodElement new
        isMeta: isMeta;
        proxyClass: classProxy;
        proxyClassName: classProxy asTopezProxy className;
        selector: selector asString;
        category: categoryName;
        setSource;
        yourself